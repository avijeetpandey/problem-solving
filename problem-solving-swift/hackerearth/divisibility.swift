//
//  divisibility.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 18/03/25.
//

func findDivisibility(with arr: [Int]) {
    var isDivisble = false
    
    for item in arr {
        let lastDigit = item % 10
        if lastDigit == 0 {
            isDivisble = true
            break
        }
    }
    
    if isDivisble {
        print("Yes")
    } else {
        print("No")
    }
}
