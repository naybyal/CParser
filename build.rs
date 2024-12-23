use prost_build;
use std::env;
use std::path::PathBuf;

fn main() {
    // Define the path to the Protobuf file
    let proto_file = "protos/ast.proto"; // Ensure this path is correct

    // Get the output directory for the generated code
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());

    println!("cargo:rerun-if-changed={}", proto_file); // Rebuild if the file changes

    // Compile the Protobuf file into Rust code
    prost_build::Config::new()
        .out_dir(&out_dir)
        .compile_protos(&[proto_file], &[env::current_dir().unwrap()])
        .expect("Failed to compile Protobuf files");

    println!("Protobuf files compiled successfully");
}
