//
//  palindromeNumber.swift
//  problem-solving-swift
//
//  Created by Avijeet on 02/07/24.
//

import Foundation

func palindromeNumber(_ x: Int) -> Bool {
    
    let str = String(x)
    var nonReversed = str.split(separator: "")
    var reversed = nonReversed
    
    reversed.reverse()
    
    
    if nonReversed.joined(separator: "") == reversed.joined(separator: "") {
        return true
    }
    
    
    return false
}
