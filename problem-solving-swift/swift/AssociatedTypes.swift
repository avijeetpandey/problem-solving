//
//  AssociatedTypes.swift
//  problem-solving-swift
//
//  Created by Avijeet on 19/03/24.
//

import Foundation


// MARK: - Protocol without associated type
protocol StringCollection {
    var count: Int { get }
    subscript(index: Int) -> String { get }
    mutating func append(_ item: String)
}

// Associated type gives a placeholder name to the type that is being used , make it more generic to use
protocol Collection {
    associatedtype Item
    var container: [Item] { get set}
    var count: Int { get }
    subscript(index: Int) -> Item { get }
    mutating func append(_ item: Item)
}

struct UppercaseStringsCollection: Collection {
    var container: [String] = []
    
    var count: Int { container.count }
    
    mutating func append(_ item: String) {
        guard !container.contains(item) else { return }
        container.append(item.uppercased())
    }
    
    subscript(index: Int) -> String {
        return container[index]
    }
}
