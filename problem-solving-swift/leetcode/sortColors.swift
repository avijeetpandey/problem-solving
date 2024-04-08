//
//  sortColors.swift
//  problem-solving-swift
//
//  Created by Avijeet on 08/04/24.
//

import Foundation

class SortColors {
    static func sort(_ nums: inout [Int]) {
        var zc = 0, oc = 0, tc = 0
        
        nums.forEach { num in
            if num == 0 { zc+=1 }
            if num == 1 { oc += 1 }
            if num == 2 { tc += 1 }
        }
        
        for i in 0..<nums.count {
            if zc > 0 {
                nums[i] = 0
                zc -= 1
            } else if oc > 0 {
                nums[i] = 1
                oc -= 1
            } else {
                nums[i] = 2
            }
        }
    }
}
