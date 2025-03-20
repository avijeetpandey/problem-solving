//
//  Untitled.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 18/03/25.
//

func palindromeString(with string: String) {
    
    var isPalindromeString: Bool = true
    
    for i in 0..<string.count {
        let currentIndex = string.index(string.startIndex, offsetBy: i)
        let endIndex = string.index(string.startIndex, offsetBy: string.count - i - 1)
        
        if string[currentIndex] != string[endIndex] {
            isPalindromeString = false
            break
        }
    }
    
    if isPalindromeString {
        print("YES")
    } else {
        print("NO")
    }
}
