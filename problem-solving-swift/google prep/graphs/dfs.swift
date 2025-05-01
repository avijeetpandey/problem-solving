//
//  dfs.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

class DFSGraph {
    private var adjacencyList: [[Int]]
    private let size: Int
    
    init(size: Int) {
        self.size = size
        self.adjacencyList = Array(repeating: [], count: size)
    }
    
    func addEdge(from u: Int, to v: Int) {
        guard v < size, u < size else { return }
        adjacencyList[u].append(v)
    }
    
    func dfs(start: Int) {
        guard start < size else { return }
        var visited = Array(repeating: false, count: size)
        dfsRecursive(node: start, visited: &visited)
    }
    
    func dfsRecursive(node: Int, visited: inout [Bool]) {
        visited[node] = true
        print(node, terminator: " ")
        
        for neighbour in adjacencyList[node] {
            if !visited[neighbour] {
                dfsRecursive(node: neighbour, visited: &visited)
            }
        }
    }
}
