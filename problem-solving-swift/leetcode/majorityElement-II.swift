//
//  majorityElement-II.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class MajorityElementII {
    static func majorityElement(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        let n = nums.count/3
        
        var map = [Int: Int]()
        
        for element in nums {
            if let count = map[element] {
                map[element] = count + 1
            } else {
                map[element] = 1
            }
        }
        
        map.forEach { (key, value) in
            if value > n {
                result.append(key)
            }
        }
        
        return result
    }
}
