//
//  ReportViewModel.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation


// MARK: - ReportViewModelWithoutFactory
class ReportViewModelWithoutFactory {
    private let taxReport = TaxReport()
    private let profitReport = ProfitReport()
    
    func getReport(of type: ReportType) -> [Report] {
        switch type {
        case .tax:
            return taxReport.getReport()
        case .profit:
            return profitReport.getReport()
        }
    }
}

// MARK: - ReportViewModelWithFactory
class ReportViewModelWithFactory {
    
    let report: ReportProtocol
    
    init(_report: ReportProtocol) {
        self.report = _report
    }
    
    func getReport() -> [Report] {
        return report.getReport()
    }
}
