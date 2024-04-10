//
//  detectStartingOfLoopLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/04/24.
//

import Foundation

func detectCycleWithSet(_ head: ListNode?) -> ListNode? {
    var set = Set<ListNode?>()
    
    var currentNode = head
    
    while currentNode != nil {
        if set.contains(currentNode) {
            return currentNode
        }
        
        set.insert(currentNode)
        currentNode = currentNode?.next
    }
    
    return nil
}

func detectCycleInLinkedList(_ head: ListNode?) -> ListNode? {
    var currentNode = head
    var slowNode = head
    var fastNode = head
    var entryNode = head
    
    while fastNode != nil && fastNode?.next != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
        
        if slowNode === fastNode {
            while slowNode !== entryNode {
                entryNode = entryNode?.next
                slowNode = slowNode?.next
            }
            
            return slowNode
        }
    }
    
    return nil
}
