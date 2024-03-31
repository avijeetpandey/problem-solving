//
//  TaskRegistrationManageable.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

protocol TaskRegistrationManageable {
    var pendingTasks: Int { get }
    func enter()
    func leave(completionHandler: @escaping () -> Void)
}
