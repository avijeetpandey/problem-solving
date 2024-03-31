//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

let reportViewModel = ReportViewModelWithFactory(_report: ReportFactory.create(type: .profit))


configureDispatchGroup()
