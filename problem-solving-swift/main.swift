//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

let graph = BFSGraph(size: 5)

graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 2)
graph.addEdge(from: 1, to: 3)
graph.addEdge(from: 2, to: 4)

graph.bfs(startNode: 0)
