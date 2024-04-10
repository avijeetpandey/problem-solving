//
//  reverseList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation


class ListNode {
    var val: Int
    var next: ListNode?
    init() {
        self.val = 0
        self.next = nil
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
