//
//  cycleInLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/04/24.
//

import Foundation

func hasCycle(_ head: ListNode?) -> Bool {
    var currentNode = head
    var slowNode = currentNode
    var fastNode = currentNode
    
    while currentNode != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
        
        if slowNode == fastNode {
            return true
        }
    }
    
    return false
}


func isLinkedListHavingCycles(_ head: ListNode?) -> Bool {
    var currentNode = head
    var slowNode = head
    var fastNode = head
    
    while fastNode != nil && fastNode?.next != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
        
        if slowNode === fastNode {
            return true
        }
    }
    
    return false
}
