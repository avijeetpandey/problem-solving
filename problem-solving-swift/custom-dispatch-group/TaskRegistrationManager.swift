//
//  TaskRegistrationManager.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class TaskRegistrationManager: TaskRegistrationManageable {
    var pendingTasks: Int = 0
    
    
    func enter() {
        pendingTasks += 1
    }

    func leave(completionHandler: @escaping () -> Void) {
        pendingTasks -= 1
        if pendingTasks == 0 {
            completionHandler()
        }
    }
}
