//
//  AnalyticsProvider.swift
//  problem-solving-swift
//
//  Created by Avijeet on 29/03/24.
//

import Foundation

typealias AnalyticsMetaData = [String: Any]

protocol AnalyticsProvider {
    func sendAnalyticsEvent(named event: Event, metadata: AnalyticsMetaData?) throws
}
