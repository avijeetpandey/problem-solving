//
//  Basics.swift
//  problem-solving-swift
//
//  Created by Avijeet on 19/03/24.
//

import Foundation

// MARK: - TypeAlias
typealias StudentName = String
let name: StudentName = "Elon Musk"

// typealias for custom type
class Student {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(name: "Special Student", age: 30)
    }
}

typealias Students = Array<Student>

// typealias for closures
typealias ApiResponseHandler = (Int) -> (String)

// function without closure
func someMethod(handler: (Int) -> (String)) {
    
}

// function with typealias
func someMethodWithHandler(handler: ApiResponseHandler) {
    
}
