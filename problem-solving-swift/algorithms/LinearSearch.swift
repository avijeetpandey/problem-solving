//
//  LinearSearch.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

// MARK: - Linear Search
func linearSearch(_ data: [Int], target: Int) -> Bool {
    for number in data {
        if number == target {
            return true
        }
    }
    return false
}
