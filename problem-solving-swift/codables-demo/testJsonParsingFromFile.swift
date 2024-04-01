//
//  testJsonParsingFromFile.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation


func testJsonParsingFromFile() {
    do {
        if let url = Bundle.main.url(forResource: "mock", withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let result = try? JSONDecoder().decode(Article.self, from: data) {
            print(result.response)
        }
    }
}
