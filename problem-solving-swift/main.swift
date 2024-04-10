//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

let list = LinkedList<Int>()

list.append(10)
list.append(20)
list.append(30)
list.append(40)
list.append(50)
list.append(60)

let reversedHead = list.reverse()

list.printList(with: reversedHead)

