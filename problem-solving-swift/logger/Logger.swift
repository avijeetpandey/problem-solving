//
//  Logger.swift
//  problem-solving-swift
//
//  Created by Avijeet on 27/03/24.
//

import Foundation

// MARK: - Logger
enum Log {
    fileprivate static func handleLog(level: LogLevel, str: String, shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)]", str]
        var fullString = logComponents.joined(separator: " ")
        
        if shouldLogContext {
            fullString += " => \(context.description)"
        }
        
        #if DEBUG
            print(fullString)
        #endif
    }
    
    
    static func info(_ str: StaticString,
                     shouldLogContext: Bool = true,
                     file: String = #file,
                     function: String = #function,
                     line: Int = #line) {
        
        let context = Context(file: file,
                              function: function,
                              line: line)
        
        Log.handleLog(level: .info,
                      str: str.description,
                      shouldLogContext: shouldLogContext,
                      context: context)
    }
    
    static func error(_ str: StaticString,
                      shouldLogContext: Bool = true,
                      file: String = #file,
                      function: String = #function,
                      line: Int = #line) {
        
        
        let context = Context(file: file,
                              function: function,
                              line: line)
        
        Log.handleLog(level: .error,
                      str: str.description,
                      shouldLogContext: shouldLogContext,
                      context: context)
    }
    
    static func warning(_ str: StaticString, 
                        shouldLogContext: Bool = true,
                        file: String = #file,
                        function: String = #function,
                        line: Int = #line) {
        
        
        let context = Context(file: file,
                              function: function,
                              line: line)
        
        Log.handleLog(level: .warning,
                      str: str.description,
                      shouldLogContext: shouldLogContext,
                      context: context)
    }
}
