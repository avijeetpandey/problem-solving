//
//  canFinish.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/05/25.
//

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var visited = Array(repeating: false, count: numCourses)
    
    var list: [[Int]] = Array(repeating: [], count: numCourses)
    
    for pair in prerequisites {
        list[pair[1]].append(pair[0])
    }
    
    for i in 0..<numCourses {
        if !visited[i] {
            let ans = isCyclicBfs(startNode: i, visited: &visited, list)
            if ans {
                return true
            }
        }
    }
    
    return false
}

func isCyclicBfs(startNode: Int, visited: inout [Bool], _ adjacencyList: [[Int]]) -> Bool {
    var queue: [Int] = []
    var parent: [Int: Int] = [:]
    
    parent[startNode] = -1
    visited[startNode] = true
    queue.append(startNode)
    
    while !queue.isEmpty {
        let frontNode = queue.removeFirst()
        
        for neighbour in adjacencyList[frontNode] {
            if visited[neighbour]  && parent[frontNode] != neighbour  {
                return true
            } else if !visited[neighbour] {
                visited[neighbour] = true
                queue.append(neighbour)
            }
        }
    }
    
    return false
}
