//
//  majorityElement.swift
//  problem-solving-swift
//
//  Created by Avijeet on 08/04/24.
//

import Foundation

class MajorityElement {
    static func find(_ nums: [Int]) -> Int {
        var count = 0
        let n = nums.count/2
        
        var frequencyMap = [Int: Int]()
        
        nums.forEach { num in
            frequencyMap[num, default: 0] = (frequencyMap[num] ?? 0)+1
        }
        
       
        for (key, value) in frequencyMap {
            if value > n {
                count = key
                break
            }
        }
        
        return count
    }
}
