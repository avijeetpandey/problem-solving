//
//  favouriteSinger.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 17/03/25.
//

func favouriteSinger() {
    let testCases = readLine()
    
    let arr = readLine()?.split(separator: " ").map({ string in
        return Int(string)!
    })
    
    var frequencyCounter: [Int: Int] = [:]
    
    var counter = 0
    
    arr?.forEach({ element in
        if frequencyCounter[element] == nil {
            frequencyCounter[element] = 1
        } else {
            frequencyCounter[element]! += 1
        }
    })
    
    let max = frequencyCounter.values.max() ?? 0
    
    frequencyCounter.forEach { (key, value) in
        if value == max {
            counter += 1
        }
    }
    
    print(counter)
}
