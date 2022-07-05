use std::io;
use std::io::prelude::*;

fn main() {
    let mut stdin = Vec::new();
    io::stdin().read_to_end(&mut stdin).unwrap();
    println!("{}", String::from_utf8_lossy(&stdin));
}
