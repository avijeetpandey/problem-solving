//
//  CompletionHandlerManager.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class CompletionHandlerManager: CompletionHandleable {
    private var completionHandler: () -> Void = {}
    
    func notify(queue: DispatchQueue, execute: @escaping () -> Void) {
        completionHandler = execute
    }
    
    func handleCompletion() {
        completionHandler()
    }
}
