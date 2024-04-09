//
//  searchMatrix.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class SearchMatrix {
    static func search(_ nums: [[Int]], target: Int) -> Bool {
        for i in 0..<nums.count {
            for j in 0..<nums[0].count {
                if nums[i][j] == target {
                    return true
                }
            }
        }
        
        return false
    }
    
    static func optimisedSearch(_ nums: [[Int]], target: Int) -> Bool {
        
        for i in 0..<nums.count {
            if nums[i][0] <= target && target <=  nums[i][nums[0].count - 1] {
                return binarySearch(nums[i], target: target)
                
            }
        }
        
        return false
    }
    
    static func binarySearch(_ nums: [Int], target: Int) -> Bool {
        
        var startIndex = nums.startIndex
        var endIndex = nums.endIndex
        
        while startIndex <= endIndex {
            var midIndex = (startIndex + endIndex) / 2
            
            if nums[midIndex] == target {
                return true
            } else if nums[midIndex] > target {
                endIndex = midIndex - 1
            } else {
                startIndex = midIndex + 1
            }
        }
        
        return false
    }
}
