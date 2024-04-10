//
//  middleOfLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

func middleNode(_ head: ListNode?) -> ListNode? {
    var currentNode = head
    var slowNode: ListNode? = currentNode
    var fastNode: ListNode? = currentNode
    
    while fastNode != nil && fastNode?.next != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next
    }
    
    return slowNode
}
