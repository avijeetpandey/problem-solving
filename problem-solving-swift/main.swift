//
//  main.swift
//  problem-solving-swift
//
//  Created by Avijeet on 09/03/24.
//

import Foundation

let graph = Graph(size: 5)

graph.addUndirectedEdge(from: 0, to: 1)
graph.addUndirectedEdge(from: 0, to: 2)
graph.addUndirectedEdge(from: 1, to: 3)
graph.addUndirectedEdge(from: 2, to: 4)

graph.bfs(startNode: 0)
