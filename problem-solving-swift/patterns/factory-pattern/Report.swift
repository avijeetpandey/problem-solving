//
//  Repor.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

protocol ReportProtocol {
    func getReport() -> [Report]
}

struct Report {
    let id: UUID
    let year: Int
    let total: Double
    
    static func generateDummyReport() -> [Report] {
        return [
            Report(id: UUID(), year: 2024, total: 50000),
            Report(id: UUID(), year: 2224, total: 930000),
            Report(id: UUID(), year: 2424, total: 80000),
            Report(id: UUID(), year: 1024, total: 60000),
            Report(id: UUID(), year: 9024, total: 50000),
            Report(id: UUID(), year: 9024, total: 230982),
            Report(id: UUID(), year: 4324, total: 59300)
        ]
    }
}
