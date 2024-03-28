//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

AnalyticsManager.shared.configure(provider: CustomAnalyticsProvider())

do {
    try AnalyticsManager.shared.track(event: .click("Wallet button clicked"),
                                  metaData: ["id": 321])
} catch(let error) {
    print(error.localizedDescription)
}


