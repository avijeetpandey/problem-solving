//
//  CompletionHandleable.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

protocol CompletionHandleable {
    func notify(queue: DispatchQueue, execute: @escaping () -> Void)
    func handleCompletion()
}
