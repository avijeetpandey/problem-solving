//
//  reverseList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation


class ListNode: Hashable {
    
    func hash(into hasher: inout Hasher) {
        
    }
    
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        if lhs.val == rhs.val {
            return true
        }
        
        return false
    }
    
    var val: Int
    var next: ListNode?
    init(val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var currentNode = head
    var prevNode: ListNode? = nil
    var nextNode: ListNode? = nil
    
    while currentNode != nil {
        nextNode = currentNode?.next
        currentNode?.next = prevNode
        prevNode = currentNode
        currentNode = nextNode
    }
    
    return prevNode
}
