//
//  Context.swift
//  problem-solving-swift
//
//  Created by Avijeet on 27/03/24.
//

import Foundation

// MARK: - Context
struct Context {
    let file: String
    let function: String
    let line: Int
    
    var description: String {
        "\((file as NSString).lastPathComponent): \(line) \(function)"
    }
}
