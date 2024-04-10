//
//  addNumbersAsLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/04/24.
//

import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var sumNode = ListNode(val: 0)
    var temp: ListNode? = sumNode
    
    var one = l1
    var two = l2
    
    var carry = 0
    
    while one != nil || two != nil || (carry != 0) {
        var sum = 0
        if one != nil {
            sum += one?.val ?? 0
            one = one?.next
        }
        
        if two != nil {
            sum += two?.val ?? 0
            two = two?.next
        }
        
        sum += carry
        
        carry = sum / 10
        
        let tempNode = ListNode(val: sum % 10)
        
        temp?.next = tempNode
        temp = temp?.next
    }
    
    return sumNode.next
}
