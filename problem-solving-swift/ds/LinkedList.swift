//
//  LinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 08/04/24.
//

import Foundation

// MARK: - representation of node
class Node<T> {
    var data: T
    var next: Node<T>?
    
    init(data: T, next: Node<T>? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkedList<T> {
    private var head: Node<T>?
    
    var first: Node<T>? { head }
    
    var isEmpty: Bool { head == nil }
    
    var last: Node<T>? {
        var currentNode = head
        while currentNode != nil && currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    func append(_ element: T) {
        let newNode = Node(data: element)
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    func printList() {
        var currentHead = head
        while currentHead != nil  {
            print(currentHead?.data, terminator: " -> ")
            currentHead = currentHead?.next
        }
    }
}
