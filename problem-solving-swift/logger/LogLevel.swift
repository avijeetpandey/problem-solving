//
//  LogLevel.swift
//  problem-solving-swift
//
//  Created by Avijeet on 27/03/24.
//

import Foundation

// MARK: - LogLevel


// This enum handles the severity of the log levels
enum LogLevel {
    case info
    case error
    case warning
    
    var prefix: String {
        switch self {
        case .info:      return "INFO"
        case .warning:   return "WARN ⚠️"
        case .error:     return "ALERT ❌"
        }
    }
}

