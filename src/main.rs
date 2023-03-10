#![allow(dead_code)]
#![allow(unused)]

// This is a comment, and is ignored by the compiler
// You can test this code by clicking the "Run" button over there ->
// or if you prefer to use your keyboard, you can use the "Ctrl + Enter" shortcut

// This code is editable, feel free to hack it!
// You can always return to the original code by clicking the "Reset" button ->

// https://doc.rust-lang.org/cargo/guide/why-cargo-exists.html
// https://doc.rust-lang.org/rust-by-example/index.html
// This is the main function

use hello_world::author;

const AUTHOR_NAME: &str = "Vallabh Kansagara";
const AUTHOR_EMAIL: &str = "vrkansagara@gmail.com";

const MONTHS: [&str; 12] = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
];

fn main() {
    author(AUTHOR_NAME, AUTHOR_EMAIL);
    println!("Current month is {0}", MONTHS[1]);
}
