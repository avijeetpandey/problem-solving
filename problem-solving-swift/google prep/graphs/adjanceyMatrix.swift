//
//  adjanceyMatrix.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

/**
 Edges:
 0 — 1
 0 — 2
 1 — 2
 2 — 3
 */

class GraphAdjanceyMatrix {
    private var adjanceyMatrix: [[Int]]
    private let size: Int
    
    init(size: Int) {
        self.size = size
        self.adjanceyMatrix = Array(repeating: Array(repeating: 0, count: size), count: size)
    }
    
    // adding edge
    func addEdge(from u: Int, to v: Int) {
        guard u < size, v < size else { return }
        adjanceyMatrix[u][v] = 1
        adjanceyMatrix[v][u] = 1 // undirected graph
    }
    
    func printMatrix() {
        for row in adjanceyMatrix {
            print(row)
        }
    }
}
