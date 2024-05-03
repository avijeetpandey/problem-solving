//
//  Closures.swift
//  problem-solving-swift
//
//  Created by Avijeet on 03/05/24.
//

import Foundation

// MARK: - file to demonstrate usage of closures

typealias ArithemeticClosure = (Int, Int) -> Int

// defining closures
let addClosure: (Int,Int) -> Int = { $0 + $1 }
let subtractClosure: (Int, Int) -> Int = { $0 - $1 }
let multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

// function that takes closures
func performOperation(on a: Int, and b: Int, operation: ArithemeticClosure) -> Int {
    return operation(a, b)
}

func testClousres() {
    let addResult = performOperation(on: 5, and: 20, operation: addClosure)
    let multiplyResult = performOperation(on: 10, and: 10, operation: multiplyClosure)
    
    print(addResult)
    print(multiplyResult)
}

