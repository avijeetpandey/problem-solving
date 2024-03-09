//
//  removeDuplicates.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

func removeDuplicates(_ nums: [Int]) -> Int {
    var set = Set<Int>()
    
    nums.forEach { num in
        set.insert(num)
    }
    
    return set.count
}
