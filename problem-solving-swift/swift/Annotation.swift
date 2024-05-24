//
//  Annotation.swift
//  problem-solving-swift
//
//  Created by Avijeet on 24/05/24.
//

import Foundation

@propertyWrapper
struct LogName {
    private var value: String
    
    init(wrappedValue: String) {
        self.value = wrappedValue
    }
    
    var wrappedValue: String {
        get { return value }
    }
    
    var projectedValue: LogName {
        get { return self }
        set { self  = newValue }
    }
}
