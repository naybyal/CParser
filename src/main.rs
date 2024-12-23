/// Author: Nabiel Ahammed
/// Date: 21 Dec 2024
use clang::{Clang, Index, Entity};
use prost::Message;
use std::fs::File;
use std::io::{self, Write};

mod ast_proto {
    include!(concat!(env!("OUT_DIR"), "/ast_proto.rs"));
}
use ast_proto::{Ast, AstNode};

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

fn main() -> io::Result<()> {
    // Initialize Clang 
    let clang = Clang::new().unwrap();
    let index = Index::new(&clang, false, false);

    let c_file = "test.c"; 

    // Parse the C file 
    let translation_unit = match index.parser(c_file).parse() {
        Ok(unit) => unit,
        Err(e) => {
            eprintln!("Error parsing C file '{}': {}", c_file, e);
            return Err(io::Error::new(io::ErrorKind::Other, "Failed to parse C file"));
        }
    };

    // Get the root cursor of the parsed C file
    let root_cursor = translation_unit.get_entity();

    // Convert the root cursor to an AST node
    let ast_root = parse_ast(root_cursor);

    // Create an AST message for Protobuf serialization
    let ast = Ast { root: Some(ast_root) };

    // Print the generated AST to the console
    println!("{:#?}", ast);

    // Save the AST to a Protobuf file
    let output_file = "ast_output.pb";
    let mut file = File::create(output_file)?;
    let encoded = ast.encode_to_vec();
    file.write_all(&encoded)?;

    // Notify that the AST has been saved
    println!("AST saved to {}", output_file);

    Ok(())
}
