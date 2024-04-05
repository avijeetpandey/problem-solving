//
//  Hoc.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

// sort - sorts the array inplace
// sorted - sorts and return a new array , the original one remains unchanged
// one more thing could be passed is if we want decresing > if increasing <

// MARK: - demonstrates the usage of sorted function
func sortedTest() {
    let numbers: [Int] = [1,20,0,89,61,4]
    let descendingNumbers = numbers.sorted { (a,b) in
        return b < a
    }
    
    print(descendingNumbers)
    
    let descNumbers = numbers.sorted(by: <)
    print(descNumbers)
    
    
    let animals: [String] = ["zebra","kiwi","dodo","den","tiger"]
    
    let sortedAnimals = animals.sorted { first, second in
        return first < second
    }
    
    let anotherSortedAnimals = animals.sorted(by: <)
    
    print(anotherSortedAnimals)
}


// MARK: - demonstrates usage of map function
func mapTest() {
    let numbers: [Int] = [1,2,3,4,5,6]
    
    let squaredNumbers = numbers.map { number in
        return number*number
    }
    
    print(squaredNumbers)
    
    // another way of writting the same
    let doubledNumbers = numbers.map { $0 * 2 }
    
    print(doubledNumbers)
}


// MARK: - demonstrates the usage of reduce
func reduceTest() {
    let numbers: [Int] = [1,2,3,4]
    
    let sum = numbers.reduce(0) { partialResult, number in
        return partialResult + number
    }
    
    print(sum)
}
