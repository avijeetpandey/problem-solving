//
//  goodPairs.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var pairsCount = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] == nums[j] && i < j {
                pairsCount+=1
            }
        }
    }
    
    return pairsCount
}
