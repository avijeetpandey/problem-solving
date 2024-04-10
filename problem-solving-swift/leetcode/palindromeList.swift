//
//  palindromeList.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    
    var currentNode = head
    
    var elements = [Int]()
    
    while currentNode != nil {
        elements.append(currentNode?.val ?? 0)
        currentNode = currentNode?.next
    }
    
    
    return elements == elements.reversed()
}
