//
//  stocksBuyAndSell.swift
//  problem-solving-swift
//
//  Created by Avijeet on 05/04/24.
//

import Foundation

class StocksBuyAndSell {
    static func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        
        for i in 0..<prices.count {
            for j in i+1..<prices.count {
                let currentProfit = prices[j] - prices[i]
                
                if currentProfit > maxProfit {
                    maxProfit = currentProfit
                }
            }
        }
        
        return maxProfit
    }
}
