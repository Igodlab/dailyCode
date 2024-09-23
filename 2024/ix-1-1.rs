// pg 90
// Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

use std::collections::HashSet;

fn has_unique_chars_with_set(s: &str) -> bool {
    let mut char_set = HashSet::new();
    for c in s.chars() {
        if !char_set.insert(c) {
            return false;
        }
    }
    true
}

fn has_unique_chars_without_set(s: &str) -> bool {
    let mut seen = 0u128;
    for c in s.chars() {
        let bit = 1 << (c as u32);
        if (seen & bit) != 0 {
            return false;
        }
        seen |= bit;
    }
    true
}

fn main() {
    let test_strings = vec!["abcdefg", "hello", "rust", "unique"];
    
    println!("Using additional data structure:");
    for s in &test_strings {
        println!("{}: {}", s, has_unique_chars_with_set(s));
    }
    
    println!("\nWithout using additional data structure:");
    for s in &test_strings {
        println!("{}: {}", s, has_unique_chars_without_set(s));
    }
}
