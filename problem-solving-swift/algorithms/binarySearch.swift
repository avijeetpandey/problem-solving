//
//  binarySearch.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class BinarySearch {
    static func search(_ arr: [Int], key: Int) -> Int? {
        var startIndex = 0
        var endIndex = arr.count
        
        while startIndex < endIndex {
            let midIndex = (startIndex + endIndex)/2
            
            if arr[midIndex] == key {
                return midIndex
            } else if arr[midIndex] < key {
                startIndex = midIndex + 1
            } else {
                endIndex = midIndex - 1
            }
        }
        
        return nil
    }
}
