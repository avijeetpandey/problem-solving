//
//  ProfitReport.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class ProfitReport: ReportProtocol {
    func getReport() -> [Report] {
        print("Fetching profit reports")
        return Report.generateDummyReport()
    }
}
