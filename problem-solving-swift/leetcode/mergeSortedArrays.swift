//
//  mergeSortedArrays.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class MergeSortedArray {
    static func merge(_ one: inout [Int], _ m: Int, _ two: [Int], _ n: Int) {
        for _ in 0..<one.count - m {
            one.removeLast()
        }
    
        one += two
        one.sort()
    }
}
