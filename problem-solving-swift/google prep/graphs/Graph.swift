//
//  Graph.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

class Graph {
    private var adjacencyList: [[Int]]
    private let size: Int
    
    init(size: Int) {
        self.size = size
        self.adjacencyList = Array(repeating: [], count: size)
    }
    
    // add directed edge
    func addDirectedEdge(from u: Int, to v: Int) {
        guard u < size , v < size else { return }
        adjacencyList[u].append(v)
    }
    
    // add undirected edge
    func addUndirectedEdge(from u: Int, to v: Int) {
        guard u < size , v < size else { return }
        adjacencyList[u].append(v)
        adjacencyList[v].append(u)
    }
    
    func bfs(startNode: Int) {
        var visited = Array(repeating: false, count: size)
        var queue: [Int] = []
        
        queue.append(startNode)
        visited[startNode] = true
        
        // process each node and its neighbours
        while !queue.isEmpty {
            var frontNode = queue.removeFirst()
            print(frontNode, terminator: " ")
            
            // start traversing the neighbours of the frontnode and process them as well
            for neighbour in adjacencyList[frontNode] {
                if !visited[neighbour] {
                    visited[neighbour] = true
                    queue.append(neighbour)
                }
            }
            
            print()
        }
    }
    
    func dfs(startNode: Int) {
        var visited = Array(repeating: false, count: size)
        recursiveDfs(startNode: startNode, visited: &visited)
    }
    
    func recursiveDfs(startNode: Int, visited : inout [Bool]) {
        visited[startNode] = true
        print(startNode, terminator: " ")
        
        // process each node and its corresponding neighbours
        for neighbour in adjacencyList[startNode] {
            if !visited[neighbour] {
                recursiveDfs(startNode: neighbour, visited: &visited)
            }
        }
    }
}
