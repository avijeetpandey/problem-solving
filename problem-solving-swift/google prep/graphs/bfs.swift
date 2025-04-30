//
//  bfs.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

class BFSGraph {
    private var adjacencyList: [[Int]]
    private let size: Int
    
    init(size: Int) {
        self.size = size
        self.adjacencyList = Array(repeating: [], count: size)
    }
    
    func addEdge(from u: Int, to v: Int) {
        guard u < size, v < size else { return }
        adjacencyList[u].append(v)
    }
    
    func bfs(startNode: Int) {
        var visited = Array(repeating: false, count: size)
        var queue: [Int] = []
        
        // add the start node to the queue and mark it as visited
        queue.append(startNode)
        visited[startNode] = true
        
        print("BFS traversal")
        
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            
            print(currentNode, terminator:  " ")
            
            for neighbour in adjacencyList[currentNode] {
                if !visited[neighbour] {
                    visited[neighbour] = true
                    queue.append(neighbour)
                }
            }
        }
        
        print()
    }
}

// Time complexity = O(V + E)
// Space complexity = 0(V)
