//
//  findDuplicate.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class FindDuplicate {
    static func find(_ nums: [Int]) -> Int {
        var map : [Int: Int] = [:]
        
        var repeating = -1
        
        for element in nums {
            if let count = map[element] {
                map[element] = count+1
            } else {
                map[element] = 1
            }
        }
        
        map.forEach { (key, value) in
            if value > 1 {
                repeating = key
            }
        }
        
        return repeating
    }
}
