//
//  WaitTimeManager.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

class WaitTimeManager: WaitTimeManageable {
    func wait(for taskRegistration: TaskRegistrationManageable) {
        while taskRegistration.pendingTasks > 0 {
            Thread.sleep(forTimeInterval: 0.1)
        }
    }
    
    func wait(timeout: DispatchTime, for taskRegisration: TaskRegistrationManageable) -> DispatchTimeoutResult {
        var result: DispatchTimeoutResult = .success
        
        let semaphore = DispatchSemaphore(value: 0)
        
        while taskRegisration.pendingTasks > 0 {
            let remainingTime = timeout.uptimeNanoseconds - DispatchTime.now().uptimeNanoseconds
            
            if remainingTime <= 0 {
                result = .timedOut
                break
            }
            
            let waitTime = DispatchTime.now() + DispatchTimeInterval.nanoseconds(Int(remainingTime))
            
            DispatchQueue.global().async {
                if taskRegisration.pendingTasks == 0 {
                    semaphore.signal()
                }
            }
            
            let waitResult = semaphore.wait(timeout: waitTime)
            
            if waitResult == .timedOut {
                result = .timedOut
                break
            }
        }
        
        return result
    }
}
