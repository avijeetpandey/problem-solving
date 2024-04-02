//
//  divisible.swift
//  problem-solving-swift
//
//  Created by Avijeet on 03/04/24.
//

import Foundation

// https://atcoder.jp/contests/abc347/tasks/abc347_a

func isDivisble() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let k = input[1]
    
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    
    
    for i in numbers {
        if i % k == 0 {
            print(i/k, terminator: " ")
        }
    }
}
