//
//  TaxReport.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class TaxReport: ReportProtocol {
    func getReport() -> [Report] {
        print("Fetching tax reports")
        return Report.generateDummyReport()
    }
}
