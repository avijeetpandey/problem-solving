//
//  Stack.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/03/24.
//

import Foundation

// MARK: - Stack
public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var elements: [T] {
        return array
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
    init(array: [T] = [T]()) {
        self.array = array
    }
}
