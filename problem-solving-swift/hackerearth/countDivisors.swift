//
//  countDivisors.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 20/03/25.
//


func countDivisors(l: Int, r: Int, k: Int) {
    var count = 0
    for i in l...r {
        if i % k == 0 {
            count += 1
        }
    }
    print(count)
}
