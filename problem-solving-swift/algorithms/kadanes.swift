//
//  kadanes.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class KadaneAlgorithm {
    static func maxSubArray(_ nums: [Int]) -> Int {
        var sumSoFar: Int = 0
        var maxSum: Int = Int.min
        
        for i in 0..<nums.count {
            sumSoFar += nums[i]
            
            if sumSoFar > maxSum {
                maxSum = sumSoFar
            }
            
            if sumSoFar < 0 {
                sumSoFar = 0
            }
        }
        
        return maxSum
    }
}
