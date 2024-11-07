//
//  MutatingAndInout.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 07/11/24.
//


// MARK: use of inout parameter
func modifyTheParameters(count: inout Int) {
    count *= 2
}

// use of mutating keyword
struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func decrement() {
        count -= 1
    }
}
