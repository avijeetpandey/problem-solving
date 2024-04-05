//
//  Anagram.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class Anagram {
    static func isValidAnagram(_ s: String, _ t: String) -> Bool {
        
        if s.count != t.count { return false }
        
        let firstString = String(s.sorted())
        let secondString = String(t.sorted())
        
        
        for i in 0..<firstString.count {
            let index = firstString.index(firstString.startIndex, offsetBy: i)
            
            if firstString[index] != secondString[index] {
                return false
            }
        }
        
        return true
    }
    
    static func isValidAnagramHashMap(_ s: String, _ t: String) -> Bool {
        var sMap: [Character: Int] = [:]
        var tMap: [Character: Int] = [:]
        
        s.forEach { char in
            if sMap[char] != nil {
                sMap[char]! += 1
            } else {
                sMap[char] = 1
            }
        }
        
        t.forEach { char in
            if tMap[char] != nil {
                tMap[char]! += 1
            } else {
                tMap[char] = 1
            }
        }
        
        return sMap == tMap
    }
}
