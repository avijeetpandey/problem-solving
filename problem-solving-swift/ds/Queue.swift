//
//  Queue.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/03/24.
//

import Foundation

// MARK: - Queueable

protocol Queueable {
    associatedtype Item
    var queue: [Item] { get set }
    var rear: Item? { get }
    var front: Item? { get }
    var count: Int { get }
    func enqueue(_ element: Item)
    func dequeue() -> Item?
    func printQueue()
}

extension Queueable {
    func printQueue() {
        queue.forEach { element in
            print(element, separator: " ")
        }
    }
}

class Queue<T>: Queueable {
    internal var queue = [T]()
    
    var rear: T? {
        queue.last
    }
    
    var front: T? {
        queue.first
    }
    
    var count: Int {
        queue.count
    }
    
    func enqueue(_ element: T) {
        queue.append(element)
    }
    
    func dequeue() -> T? {
        if count == 0 {
            return nil
        }
        
        return queue.removeFirst()
    }
}
