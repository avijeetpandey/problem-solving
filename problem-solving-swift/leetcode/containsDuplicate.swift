//
//  containsDuplicate.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class ContainsDuplicate {
    static func findDuplicates(_ arr: inout [Int]) -> Bool {
        
        arr.sort()
        
        for i in 0..<arr.count-1 {
            if arr[i] == arr[i+1] {
                return true
            }
        }
        
        return false
    }
}
