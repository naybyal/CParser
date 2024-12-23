# AST Parser for C 

## Overview
This is an Abstract Syntax Tree (AST) parser for C code, built using Rust, `clang` for parsing, and `prost` for Protocol Buffers serialization. The tool takes a C file as input, generates its AST, and serializes it into a Protobuf format for further analysis or visualization.

## Features
- **C Parsing with libclang**: Utilizes `clang` bindings in Rust to parse C code and generate the AST.
- **AST Representation**: Constructs an AST as a hierarchical tree structure.
- **Protocol Buffers Serialization**: Uses `prost` to serialize the AST to a `.pb` file.
- **Extensible**: Modular design for easy extension to support more language features or output formats.

## Project Structure
```
/ast-parser
├── src
│   ├── main.rs             # Main application logic
│   ├── ast_proto.rs        # Generated protobuf definitions
│
├── proto
│   └── ast.proto           # Protobuf schema for AST
│
├── Cargo.toml              # Rust dependencies and configuration
└── README.md               # Project documentation (this file)
```

## Prerequisites
- **Rust** (Stable or Nightly)
- **libclang** (v13 or later)
- **Protoc** (for Protocol Buffers)
- **prost-build** (for Rust-Protobuf integration)

## Installation
1. Install `libclang`:
```bash
sudo apt install libclang-dev
```
2. Install Rust (if not already installed):
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
3. Install `protoc`:
```bash
sudo apt install protobuf-compiler
```
4. Clone the repository:
```bash
git clone https://github.com/nabiel/ast-parser.git
cd ast-parser
```

## Build and Run
To build and run the project, use the following commands:
```bash
cargo build
cargo run
```

### Parsing a C File
Ensure there is a C file (`test.c`) in the project root.
```bash
cargo run
```

The resulting AST will be saved as `ast_output.pb` in the project directory.

## Example Output
```
Ast {
    root: Some(
        AstNode {
            node_type: "TranslationUnit",
            name: "",
            children: [
                AstNode {
                    node_type: "FunctionDecl",
                    name: "main",
                    children: []
                }
            ]
        }
    )
}
```

## License
MIT License

## Author
**Nabiel Ahammed**

## Contact
- LinkedIn: [linkedin.com/in/nabiel-ahammed](https://linkedin.com/in/nabiel-ahammed)
- GitHub: [github.com/naybyal](https://github.com/nabiel)

# CParser
