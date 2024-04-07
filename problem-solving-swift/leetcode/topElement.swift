//
//  topElement.swift
//  problem-solving-swift
//
//  Created by Avijeet on 06/04/24.
//

import Foundation

class FrequentElements {
    static func topKFrequent(_ arr: [Int], _ k: Int) -> [Int] {
        var elements = [Int]()
        var map = [Int: Int]()
        
        var count = k
        
        arr.forEach { element in
            map[element, default: 0] = 1
        }
        
        let sortedDict = map.sorted { first, second in
            return first.value > second.value
        }
        
        for i in 0..<k {
            elements.append(sortedDict[i].key)
        }
        
        return elements
    }
}
