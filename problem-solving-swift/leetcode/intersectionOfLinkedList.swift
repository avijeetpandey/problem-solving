//
//  intersectionOfLinkedList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/04/24.
//

import Foundation

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var one = headA
    var two = headB
    
    while one != nil {
        while two != nil {
            if two === one {
                return one
            }
            
            two = two?.next
        }
        
        one = one?.next
    }
    
    return nil
}
