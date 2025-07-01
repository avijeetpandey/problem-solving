//
//  Defer.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/07/25.
//

/**
 In swift if you use defer it is being called on the exit of the current scope no matter how it is being exited
 */

enum SystemStatus {
    case hardwareFailure
    case networkFailure
    case softwareFailure
}

func fetchHardwareStatus() -> SystemStatus? { .hardwareFailure }
func fetchSoftwareStatus() -> SystemStatus? { .softwareFailure }
func fetchNetworkStatus() -> SystemStatus? { .networkFailure }

func openFile() { }
func closeFile(with name: String) -> Bool? { return nil }

func writeLog() {
    openFile()
    
    defer {
        // this will be called on the exit of the current scope
        closeFile(with: "str.txt")
    }
    
    guard let hardwareStatus = fetchHardwareStatus() else { return }
}
