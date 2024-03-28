//
//  CustomAnalyticsProvider.swift
//  problem-solving-swift
//
//  Created by Avijeet on 29/03/24.
//

import Foundation

struct CustomAnalyticsProvider: AnalyticsProvider {
    func sendAnalyticsEvent(named event: Event, metadata: AnalyticsMetaData?) throws {
        print("================")
        print("Event: \(event)")
        print("Meta: \(metadata)")
        print("================")
    }
}
