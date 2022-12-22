#![allow(dead_code)]
#![allow(unused)]

const START_DATE: &str = "2022-12-19 12:08:37";
const AUTHOR_GITHUB_PROFILE: &str = "https://github.com/vrkansagara";

pub fn author(name: &str, email: &str) {
    println!("This project started at {0}", START_DATE);
    println!("Your github homepage is {0}", AUTHOR_GITHUB_PROFILE);
    println!("Given name is {} and email {}", name, email);
}
