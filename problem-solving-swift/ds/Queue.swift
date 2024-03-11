//
//  Queue.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/03/24.
//

import Foundation

// MARK: - Queue
public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var elements: [T] {
        return array
    }
    
    public var count: Int {
        return array.count
    }
    
    public var front: T? {
        return array.first
    }
    
    public var rear: T? {
        return array.last
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}
