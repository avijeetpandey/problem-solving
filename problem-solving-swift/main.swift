//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

let adjacencyGraph = GraphAdjanceyMatrix(size: 4)
adjacencyGraph.addEdge(from: 0, to: 1)
adjacencyGraph.addEdge(from: 0, to: 2)
adjacencyGraph.addEdge(from: 1, to: 2)
adjacencyGraph.addEdge(from: 2, to: 3)

adjacencyGraph.printMatrix()
