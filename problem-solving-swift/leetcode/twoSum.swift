//
//  twoSum.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class TwoSum {
    static func findIndices(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i,j]
                }
            }
        }
        
        return []
    }
    
    static func findIndicesMap(_ nums: [Int], _ target: Int) -> [Int] {
        var frequencyMap: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            let difference = target - nums[i]
            
            if let differenceIndex = frequencyMap[difference] {
                return [i, differenceIndex]
            }
            
            frequencyMap[nums[i]] = i
        }
        
        return []
    }
}
