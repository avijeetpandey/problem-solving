//
//  middleOfLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

func middleNode<T>(_ head: Node<T>?) -> Node<T>? {
    var currentNode = head
    var slowNode = head
    var fastNode = head
    
    while currentNode != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
    }
    
    return slowNode
}


