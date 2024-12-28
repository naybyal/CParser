use clang::{Clang, Index, Entity};
use prost::Message;
use std::fs::File;
use std::io::{self, Write, Read};
use std::collections::{HashMap, HashSet};

mod ast_proto {
    include!(concat!(env!("OUT_DIR"), "/ast_proto.rs"));
}
use ast_proto::{Ast, AstNode};

#[derive(Debug, Clone, serde::Serialize)]
struct IRNode {
    node_type: String,
    name: String,
    children: Vec<IRNode>,
    control_flow: Option<String>,
    dependencies: HashSet<String>,
}

impl IRNode {
    fn new(node_type: &str, name: &str) -> Self {
        IRNode {
            node_type: node_type.to_string(),
            name: name.to_string(),
            children: vec![],
            control_flow: None,
            dependencies: HashSet::new(),
        }
    }
}

fn parse_ast(cursor: Entity) -> AstNode {
    let mut node = AstNode {
        node_type: format!("{:?}", cursor.get_kind()),
        name: cursor.get_name().unwrap_or_default(),
        children: vec![],
    };

    for child in cursor.get_children() {
        node.children.push(parse_ast(child));
    }

    node
}

fn ast_to_ir(ast_node: &AstNode) -> IRNode {
    let mut ir_node = IRNode::new(&ast_node.node_type, &ast_node.name);
    
    for child in &ast_node.children {
        let child_ir = ast_to_ir(child);
        ir_node.dependencies.insert(child_ir.name.clone());
        ir_node.children.push(child_ir);
    }

    if ir_node.node_type == "IfStmt" || ir_node.node_type == "WhileStmt" {
        ir_node.control_flow = Some("Branch".to_string());
    }

    ir_node
}

fn optimize_ir(ir_node: &mut IRNode) {
    for child in &mut ir_node.children {
        optimize_ir(child);
    }
    ir_node.children.retain(|child| child.node_type != "CompoundStmt");
}

fn serialize_ir_to_json(ir: &IRNode) -> String {
    serde_json::to_string_pretty(ir).unwrap()
}

fn split_ir(ir_node: &IRNode, depth: usize) -> Vec<IRNode> {
    let mut segments = vec![];
    
    if ir_node.node_type == "FunctionDecl" || ir_node.node_type == "StructDecl" {
        segments.push(ir_node.clone());
    }
    
    for child in &ir_node.children {
        segments.extend(split_ir(child, depth + 1));
    }

    segments
}

fn track_dependencies(segments: &mut [IRNode]) {
    let mut global_dependencies = HashMap::new();
    
    for segment in segments.iter() {
        global_dependencies.insert(segment.name.clone(), segment.dependencies.clone());
    }

    for segment in segments.iter_mut() {
        let mut resolved = HashSet::new();
        for dep in &segment.dependencies {
            if let Some(child_deps) = global_dependencies.get(dep) {
                resolved.extend(child_deps.clone());
            }
        }
        segment.dependencies.extend(resolved);
    }
}

fn main() -> io::Result<()> {
    let clang = Clang::new().unwrap();
    let index = Index::new(&clang, false, false);
    let c_file = "test.c";

    let translation_unit = match index.parser(c_file).parse() {
        Ok(unit) => unit,
        Err(e) => {
            eprintln!("Error parsing C file '{}': {}", c_file, e);
            return Err(io::Error::new(io::ErrorKind::Other, "Failed to parse C file"));
        }
    };

    let root_cursor = translation_unit.get_entity();
    let ast_root = parse_ast(root_cursor);

    let ast = Ast { root: Some(ast_root.clone()) };
    let mut file = File::create("ast_output.pb")?;
    let encoded = ast.encode_to_vec();
    file.write_all(&encoded)?;

    println!("AST saved to ast_output.pb");

    let mut ir_root = ast_to_ir(&ast_root);
    optimize_ir(&mut ir_root);

    let mut ir_segments = split_ir(&ir_root, 0);
    track_dependencies(&mut ir_segments);

    for (i, segment) in ir_segments.iter().enumerate() {
        let ir_json = serialize_ir_to_json(segment);
        let mut segment_file = File::create(format!("ir_segment_{}.json", i))?;
        segment_file.write_all(ir_json.as_bytes())?;
    }

    println!("IR split into {} segments.", ir_segments.len());
    Ok(())
}
