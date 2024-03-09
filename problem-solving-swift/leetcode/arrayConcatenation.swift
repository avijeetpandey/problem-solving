//
//  arrayConcatenation.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

func getConcatenation(_ nums: [Int]) -> [Int] {
    var numsCopy = nums
    numsCopy.append(contentsOf: nums)
    return numsCopy
}
