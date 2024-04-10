//
//  LinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 08/04/24.
//

// Linkedlist implementation
//      - first
//      - last
//      - isEmpty
//      - count
//      - append
//      - removeNodeAt
//      - nodeAt
//      - reverse
//      - find middle
//      - printList

import Foundation

// MARK: - Node
class Node<T> {
    var data: T
    var next: Node<T>?
    
    init(data: T, next: Node<T>? = nil) {
        self.data = data
        self.next = next
    }
}

// MARK: - LinkedList
class LinkedList<T> {
    
    // MARK: - Properties
    private var head: Node<T>?
    
    var first: Node<T>? { head }
    
    var last: Node<T>? {
        var currentNode = head
        while currentNode != nil && currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        
        return currentNode
    }
    
    var isEmpty: Bool { head == nil }
    
    var count: Int {
        
        if isEmpty { return 0}
        
        var c = 0
        
        var currentNode = head
        
        while currentNode != nil {
            c += 1
            currentNode = currentNode?.next
        }
        
        return c
    }
    
    // MARK: - append
    func append(_ element: T) {
        let newNode = Node(data: element)
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    // MARK: - reverse
    func reverse() -> Node<T>? {
        var currentNode = head
        var prevNode: Node<T>? = nil
        var nextNode: Node<T>? = nil
        
        while currentNode != nil {
            nextNode = currentNode?.next
            currentNode?.next = prevNode
            prevNode = currentNode
            currentNode = nextNode
        }
        
        return prevNode
    }
    
    // MARK: - printList
    func printList() {
        var currentNode = head
        
        while currentNode != nil {
            if let data = currentNode?.data {
                print(data, terminator:" -> ")
            }
            currentNode = currentNode?.next
        }
        
        print(" ")
    }
    
    func printList(with head: Node<T>?) {
        var currentNode = head
        while currentNode != nil {
            if let data = currentNode?.data {
                print(data , terminator: " -> ")
            }
            currentNode = currentNode?.next
        }
    }
}
