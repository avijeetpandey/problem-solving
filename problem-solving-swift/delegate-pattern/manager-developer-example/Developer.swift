//
//  Developer.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

class Developer {
    weak var delegate: AdditionProtocol?
    
    func addTwoNumbers(_ a: Int, _ b: Int) {
        let result = a+b
        delegate?.didFinishAdding(with: result)
    }
}
