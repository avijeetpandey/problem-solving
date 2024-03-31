//
//  JSONParser.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

// MARK: - JSONParser
/**
 Responsiblities
   - Serielize objects into strings
   - De-serialize the string to object
   - Proper error handling
 */

protocol JSONParcelable {
    func encode<T: Codable>(_ value: T) throws -> Data
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
}

final class JSONParser: JSONParcelable {
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    static let shared = JSONParser()
    
    // creating private constructor using a singleton model
    private init() { }
    
    func encode<T>(_ value: T) throws -> Data where T : Decodable, T : Encodable {
        do {
            return try encoder.encode(value)
        } catch {
            throw JSONParsingError.serializationError
        }
    }
    
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T : Decodable {
        do {
            return try decoder.decode(type, from: data)
        } catch {
            throw JSONParsingError.deserializationError
        }
    }
}
