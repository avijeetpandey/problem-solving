//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

var count: Int = 2

modifyTheParameters(count: &count)

print(count)


var counter = Counter()
counter.increment()
counter.increment()

counter.decrement()
print(counter.count)
