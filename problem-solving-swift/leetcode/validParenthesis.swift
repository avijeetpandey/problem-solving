//
//  validParenthesis.swift
//  problem-solving-swift
//
//  Created by Avijeet on 11/04/24.
//

import Foundation

class ValidParenthesis {
    static func validate(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        
        var stack: [Character] = []
        
        for ch in s {
            switch ch {
            case "(":
                stack.append(")")
            case "[":
                stack.append("]")
            case "{":
                stack.append("}")
            default:
                if stack.isEmpty || stack.removeLast() != ch {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
