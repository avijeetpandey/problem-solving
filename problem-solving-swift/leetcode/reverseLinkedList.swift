//
//  reverseLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

func reverseLinkedList<T>(_ head: Node<T>?) -> Node<T>? {
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
