//
//  CustomThread.swift
//  problem-solving-swift
//
//  Created by Avijeet on 28/03/24.
//

import Foundation

// MARK: - CustomThread
class CustomThread {
    func createThread() {
        let thread: Thread = Thread(target: self, selector: #selector(threadSelector), object: nil)
        thread.start()
    }
    
    @objc func threadSelector() {
        print("Custom thread in action")
    }
}
