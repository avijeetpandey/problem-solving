//
//  Article.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

// MARK: - Article
struct Article: Decodable {
    let response: [Response]
    
    enum Response: Decodable {
        case heading(Heading)
        case quote(Quote)
        case paragraph(Paragraph)
        case image(Image)
        
        enum CodingKeys: String, CodingKey {
            case heading
            case quote
            case image
            case paragraph
        }
        
        enum DecodingError: Error {
            case wrongJSON
        }
        
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            switch container.allKeys.first {
            case .heading:
                let value = try container.decode(Heading.self, forKey: .heading)
                self = .heading(value)
                
            case .paragraph:
                let value = try container.decode(Paragraph.self, forKey: .paragraph)
                self = .paragraph(value)
            case .image:
                let value = try container.decode(Image.self, forKey: .image)
                self = .image(value)
            case .quote:
                let value = try container.decode(Quote.self, forKey: .quote)
                self = .quote(value)
            case .none:
                throw DecodingError.wrongJSON
            }
        }
    }
}
