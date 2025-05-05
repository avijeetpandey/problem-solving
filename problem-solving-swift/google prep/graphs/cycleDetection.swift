//
//  cycleDetection.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

class CycleDetection {
    private let graph: Graph
    
    init(graph: Graph) {
        self.graph = graph
    }
    
    func detectCycleInUndirectedGraph(startNode: Int) -> Bool {
        var visited = Array(repeating: false, count: graph.graphSize)
        
        // handling disconnected components
        for i in 0..<graph.graphSize {
            if !visited[i] {
                let ans = isCyclicBfs(startNode: i, visited: &visited)
                if ans {
                    return true
                }
            }
        }
        return false
    }
    
    func isCyclicBfs(startNode: Int, visited: inout [Bool]) -> Bool {
        var parent: [Int: Int] = [:]
        var queue: [Int] = []
        parent[startNode] = -1
        visited[startNode] = true
        queue.append(startNode)
        
        while !queue.isEmpty {
            let frontNode = queue.removeFirst()
            
            for neighbour in graph.adjacencyList[frontNode] {
                if !visited[neighbour] {
                    visited[neighbour] = true
                    queue.append(neighbour)
                } else if visited[neighbour] && neighbour != parent[frontNode] {
                    return true
                }
            }
        }
        
        return false
    }
    
    func detectCycleInDirectedGraph(startNode: Int) -> Bool {
        
        return false
    }
}
