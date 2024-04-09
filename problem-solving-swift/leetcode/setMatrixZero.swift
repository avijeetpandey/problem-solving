//
//  setMatrixZero.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/04/24.
//

import Foundation

class SetMatrixZeroes {
    
    private static func markRow(_ matrix: inout [[Int]], _ row: Int, _ col: Int, _ rowIdx: Int) {
        for i in 0..<col {
            if matrix[rowIdx][i] != 0 {
                matrix[rowIdx][i] = -1
            }
        }
    }
    
    private static func markCol(_ matrix: inout [[Int]], _ row: Int, _ col: Int, _ colIdx: Int) {
        for i in 0..<col {
            if matrix[i][colIdx] != 0 {
                matrix[i][colIdx] = -1
            }
        }
    }
    
    static func setZeroes(_ matrix: inout [[Int]]) {
        let row = matrix.count
        let col = matrix[0].count
        
        for i in 0..<row {
            for j in 0..<col {
                if matrix[i][j] == 0 {
                    markRow(&matrix, row, col, i)
                    markCol(&matrix, row, col, j)
                }
            }
        }
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == -1 {
                    matrix[i][j] = 0
                }
            }
        }
    }
    
   static func setZeroesWithSet(_ matrix: inout [[Int]]) {
        var rows: Set<Int> = []
        var cols: Set<Int> = []
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == 0 {
                    rows.insert(i)
                    cols.insert(j)
                }
            }
        }
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if rows.contains(i) || cols.contains(j) {
                    matrix[i][j] = 0
                }
            }
        }
    }
}
