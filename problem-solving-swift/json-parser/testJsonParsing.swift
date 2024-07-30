//
//  testJsonParsing.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation


struct User: Codable {
    let name: String
    let age: Int
    let number: String
}

func testJsonParsing() {
    testEncoding()
    testDecoding()
}

private func testEncoding() {
    _ = JSONParser.shared
    
    let userModel: User = User(name: "Avi",
                               age: 23,
                               number: "3393")
    
    do {
        let jsonData =  try JSONParser.shared.encode(userModel)
        let jsonString = String(data: jsonData, encoding: .utf8)
        print(jsonString)
    } catch(let error) {
        print(error.localizedDescription)
    }
}

func testDecoding() {
    let parser = JSONParser.shared
    
    do {
        let jsonString = "{\"number\":\"3393\",\"age\":23,\"name\":\"Avi\"}"
        let json = try parser.decode(User.self, from: jsonString.data(using: .utf8)!)
        print(json)
    } catch (let error ) {
        print(error.localizedDescription)
    }
}
