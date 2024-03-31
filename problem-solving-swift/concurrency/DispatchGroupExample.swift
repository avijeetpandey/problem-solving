//
//  DispatchGroupExample.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation
import Dispatch

func configureDispatchGroup() {
    let dispatchGroup = DispatchGroup()
    let concurrentQueue = DispatchQueue(label: "dispatch-queue", attributes: .concurrent)
    
    concurrentQueue.async(group: dispatchGroup) {
        print("Task 1 start")
        print("Task 1 thread", Thread.isMainThread)
        print("Task 1 end")
    }
    
    
    concurrentQueue.async(group: dispatchGroup) {
        print("Task 2 start")
        print("Task 2 thread", Thread.isMainThread)
        print("Task 2 end")
    }
    
    dispatchGroup.wait()
    print("All tasks executed")
}
