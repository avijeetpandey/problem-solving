//
//  AnalyticsManager.swift
//  problem-solving-swift
//
//  Created by Avijeet on 29/03/24.
//

import Foundation

class AnalyticsManager {
    private var provider: AnalyticsProvider?
    static var shared = AnalyticsManager()
    
    private init() { }
    
    func configure(provider: AnalyticsProvider) {
        self.provider = provider
    }
    
    func track(event: Event, metaData: AnalyticsMetaData?) throws {
        
        guard let provider = provider else {
            throw AnalyticsError.noProvider
        }
        
        try provider.sendAnalyticsEvent(named: event, metadata: metaData)
    }
}
