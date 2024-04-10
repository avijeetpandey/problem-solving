//
//  countReversePairs.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

class ReversePairs {
    static func find(_ nums: [Int]) -> Int {
        var count = 0
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if i < j && nums[i] > 2 * nums[j] {
                    count += 1
                }
            }
        }
        
        return count
    }
}
