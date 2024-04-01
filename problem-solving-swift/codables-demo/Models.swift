//
//  Models.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

// MARK: - Heading
struct Heading: Decodable {
    let text: String
    let size: Int
}

// MARK: - Paragraph
struct Paragraph: Decodable {
    let text: String
}

// MARK: - Image
struct Image: Decodable {
    let url: String
    let caption: String
    let source: String
}

// MARK: - Quote
struct Quote: Decodable {
    let text: String
    let author: String
}
