//
//  singleNumber.swift
//  problem-solving-swift
//
//  Created by Avijeet on 06/08/24.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var frequencyMap: [Int: Int] = [:]
    var singleNumber: Int = -1
    
    nums.forEach { number in
        if frequencyMap[number] != nil {
            frequencyMap[number] = (frequencyMap[number] ?? 0) + 1
        } else {
            frequencyMap[number] = 1
        }
    }
    
    frequencyMap.enumerated().forEach { (key, value) in
        if value.value == 1 {
            singleNumber = value.key
        }
    }
    
    return singleNumber
}
