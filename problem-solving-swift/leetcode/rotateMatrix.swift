//
//  rotateMatrix.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class RotateMatrix {
    static func rotateBruteForce(_ matrix: inout [[Int]]) {
        let n = matrix.count
        var rotated = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                rotated[j][matrix.count-i-1] = matrix[i][j]
            }
        }
        
        matrix = rotated
    }
}
