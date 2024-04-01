//
//  Manager.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

class Manager: AdditionProtocol {
    
    var developer: Developer
    
    init(_developer: Developer) {
        self.developer = _developer
        developer.delegate = self
    }
    
    func didFinishAdding(with result: Int) {
        debugPrint("Result is \(result)")
    }
}
