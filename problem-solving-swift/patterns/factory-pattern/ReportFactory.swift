//
//  ReportFactory.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class ReportFactory {
    static func create(type: ReportType) -> ReportProtocol {
        switch type {
        case .profit:
            return ProfitReport()
        case .tax:
            return TaxReport()
        }
    }
}
