//
//  Stack.swift
//  problem-solving-swift
//
//  Created by Avijeet on 13/11/25.
//

import Foundation

// Stackable interface
protocol IStackable {
    associatedtype Item
    var stack: [Item] { get set }
    var count: Int { get }
    
    func push(_ element: Item)
    func pop() -> Item
    func peek() -> Item
    func printStack()
}

// MARK: - Printstack
extension IStackable {
    func printStack() {
        stack.forEach { item in
            print(item, separator: " ")
        }
    }
}

class IStack<T>: IStackable {
    internal var stack = [T]()
    private var top: Int = 0
    
    var count: Int {
        stack.count
    }
    
    // MARK: helper functions
    func push(_ element: T) {
        stack.append(element)
    }
    
    func pop() -> T {
        top -= 1
        return stack.removeLast()
    }
    
    func peek() -> T {
        return stack[top-1]
    }
    
}
