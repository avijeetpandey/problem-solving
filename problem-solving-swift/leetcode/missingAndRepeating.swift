//
//  missingAndRepeating.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class MissingAndRepeating {
    static func find(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        var hash = Array(repeating: 0, count: nums.count+1)
        
        for i in 0..<nums.count {
            hash[nums[i]] += 1
        }
        
        var repeating = -1
        var missing = -1
        
        for i in 1..<hash.count {
            if hash[i] == 0 {
                missing = i
            } else if hash[i] == 2 {
                repeating = i
            }
            
            if repeating != -1 && missing != -1 { break }
        }
        
        result.append(repeating)
        result.append(missing)
        
        return result
    }
}
