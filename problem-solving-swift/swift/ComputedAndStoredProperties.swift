//
//  ComputedAndStoredProperties.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 07/11/24.
//

class ComputedAndStoredProperties {
    var storedProperty = "Hello, World!"
    
    var computedProperty: String {
        get {
            return "Hello, \(storedProperty)"
        }
        
        set(newValue) {
            storedProperty = "New value"
        }
    }
}
