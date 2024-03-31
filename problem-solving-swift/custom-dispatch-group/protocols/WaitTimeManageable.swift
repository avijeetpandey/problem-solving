//
//  WaitTimeManageable.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

protocol WaitTimeManageable {
    func wait(for taskRegistration: TaskRegistrationManageable)
    func wait(timeout: DispatchTime, for taskRegisration: TaskRegistrationManageable) -> DispatchTimeoutResult
}
