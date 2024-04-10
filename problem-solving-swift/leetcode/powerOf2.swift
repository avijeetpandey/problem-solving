//
//  powerOf2.swift
//  problem-solving-swift
//
//  Created by Avijeet on 10/04/24.
//

import Foundation

class PowerOfTwo {
    static func find(_ x: Double, n: Int) -> Double {
        var ans: Double = 1
        for i in 0..<n {
            ans *= x
        }
        
        return ans
    }
}
