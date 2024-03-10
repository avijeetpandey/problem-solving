//
//  minMaxSum.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/03/24.
//

import Foundation

func minMaxSum(arr: [Int]) -> Void {
    var nums = arr
    var sum = 0
    
    nums.sort()
    
    nums.forEach { num in
        sum+=num
    }
    
    print("\(sum - nums[nums.count-1])")
    print(sum - nums[0])
}
