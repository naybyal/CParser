use clang::{Clang, Index, Entity};
use prost::Message;
use std::fs::File;
use std::io::{self, Write, Read};
use std::collections::HashMap;

mod ast_proto {
    include!(concat!(env!("OUT_DIR"), "/ast_proto.rs"));
}
use ast_proto::{Ast, AstNode};

// Define Intermediate Representation (IR)
#[derive(Debug, serde::Serialize)]
struct IRNode {
    node_type: String,
    name: String,
    children: Vec<IRNode>,
    control_flow: Option<String>,
}

impl IRNode {
    fn new(node_type: &str, name: &str) -> Self {
        IRNode {
            node_type: node_type.to_string(),
            name: name.to_string(),
            children: vec![],
            control_flow: None,
        }
    }
}

// Parse AST from Clang
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

// Convert AST to IR
fn ast_to_ir(ast_node: &AstNode) -> IRNode {
    let mut ir_node = IRNode::new(&ast_node.node_type, &ast_node.name);
    
    for child in &ast_node.children {
        ir_node.children.push(ast_to_ir(child));
    }

    if ir_node.node_type == "IfStmt" || ir_node.node_type == "WhileStmt" {
        ir_node.control_flow = Some("Branch".to_string());
    }

    ir_node
}

// Optimize IR
fn optimize_ir(ir_node: &mut IRNode) {
    for child in &mut ir_node.children {
        optimize_ir(child);
    }

    ir_node.children.retain(|child| child.node_type != "CompoundStmt");
}

// Serialize IR to JSON
fn serialize_ir_to_json(ir: &IRNode) -> String {
    serde_json::to_string_pretty(ir).unwrap()
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

    let ir_json = serialize_ir_to_json(&ir_root);
    let mut ir_file = File::create("ir_output.json")?;
    ir_file.write_all(ir_json.as_bytes())?;

    println!("IR saved to ir_output.json");

    Ok(())
}
