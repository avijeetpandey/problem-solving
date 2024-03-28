//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

var counter = 1


DispatchQueue.main.async {
    for i in 0...3 {
        counter = i
        print("\(counter)")
    }
}

for i in 4...6 {
    counter = i
    print("\(counter)")
}


DispatchQueue.main.async {
    counter = 9
    print(counter)
}
