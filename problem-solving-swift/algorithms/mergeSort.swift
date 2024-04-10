//
//  mergeSort.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

class MergeSort {
    static func sort(_ nums: [Int]) -> [Int] {
        // splitting the array
        guard nums.count > 1 else { return nums }
        
        let midIndex = nums.count / 2
        
        let leftPile = sort(Array(nums[0..<midIndex]))
        let rightPile = sort(Array(nums[midIndex..<nums.count]))
        
        // merging the array
        return merge(leftPile, rightPile)
    }
    
    static func merge(_ leftPile: [Int], _ rightPile: [Int]) -> [Int] {
        var orderedPile = [Int]()
        
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < leftPile.count && rightIndex < rightPile.count {
            if leftPile[leftIndex] > rightPile[rightIndex] {
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            } else if leftPile[leftIndex] < rightPile[rightIndex] {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
            } else {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
                
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftPile.count {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightPile.count {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        
        return orderedPile
    }
}
