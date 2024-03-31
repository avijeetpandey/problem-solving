//
//  CustomDispatchGroup.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class CustomDispatchGroup {
    private let taskRegistrationManager: TaskRegistrationManageable
    private let completionHandlerManager: CompletionHandleable
    private let waitManager: WaitTimeManageable
    
    init(taskRegistrationManager: TaskRegistrationManageable,
         completionHandlerManager: CompletionHandleable,
         waitManager: WaitTimeManageable) {
        
        self.taskRegistrationManager = taskRegistrationManager
        self.completionHandlerManager = completionHandlerManager
        self.waitManager = waitManager
        
    }
    
    func enter() {
        taskRegistrationManager.enter()
    }
    
    func leave() {
        taskRegistrationManager.leave(completionHandler: completionHandlerManager.handleCompletion)
    }
    
    func notify(queue: DispatchQueue, execute: @escaping () -> Void) {
        completionHandlerManager.notify(queue: queue, execute: execute)
    }
    
    func wait() {
        waitManager.wait(for: taskRegistrationManager)
    }
    
    func wait(timeout: DispatchTime) -> DispatchTimeoutResult {
        waitManager.wait(timeout: timeout, for: taskRegistrationManager)
    }
}
