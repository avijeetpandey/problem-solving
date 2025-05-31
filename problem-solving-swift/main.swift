//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

// Graph protocol
protocol Graphable {
    var adjacencyList: [[Int]] { get }
    var graphSize: Int {get set}
    func addDirectedEdge(from u: Int, to v: Int)
    func addUndirectedEdge(from u: Int, to v: Int)
}


// Graph Implementation for integer data type
class IntegerGraphImplementation: Graphable {
    var adjacencyList: [[Int]]
    var graphSize: Int
    
    // MARK: - init
    init(size: Int) {
        self.graphSize = size
        self.adjacencyList = Array(repeating: [], count: size)
    }
    
    func addDirectedEdge(from u: Int, to v: Int) {
        guard v < graphSize , u < graphSize else { return }
        adjacencyList[u].append(v)
    }
    
    func addUndirectedEdge(from u: Int, to v: Int) {
        guard v < graphSize , u < graphSize else { return }
        adjacencyList[u].append(v)
        adjacencyList[v].append(u) // make bidirectional connection with the nodes
    }
    
    func bfs(startNode: Int) {
        // visited array
        var visited = Array(repeating: false, count: graphSize)
        
        // queue to handle and process nodes and its neighbours
        var queue: [Int] = []
        
        queue.append(startNode)
        visited[startNode] = true
        
        while !queue.isEmpty {
            let frontNode = queue.removeFirst()
            print("\(frontNode)", terminator: " ")
            
            // process the node and its neighbour nodes
            // mark them visited if seen once
            for neighbour in adjacencyList[frontNode] {
                if !visited[neighbour] {
                    visited[neighbour] = true
                    queue.append(neighbour)
                }
            }
        }
    }
}
