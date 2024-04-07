//
//  Stack.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/03/24.
//

import Foundation

/**
 A stack contains the following
    - push ( appends element to the stack)
    - pop ( removes the top element from the stack )
    - peek ( gets the element at the top )
    - count ( gets the size of the stack )
    - printStack( prints the elements of the stack )
 */

protocol Stackable {
    associatedtype Item
    var stack: [Item] { get set }
    var count: Int { get }
    func push(_ element: Item)
    func pop() -> Item
    func peek() -> Item
    func printStack()
}

extension Stackable {
    func printStack() {
        stack.forEach { item in
            print(item, separator: " ")
        }
    }
}

class Stack<T>: Stackable {
    internal var stack = [T]()
    private var top: Int = 0
    
    var count: Int {
        stack.count
    }
    
    // MARK: - push(_ element: T)
    func push(_ element: T) {
        stack.append(element)
        top += 1
    }
    
    // MARK: - pop() -> T?
    func pop() -> T {
        top -= 1
        return stack.removeLast()
    }
    
    // MARK: - peek
    func peek() -> T {
        return stack[top-1]
    }
}
