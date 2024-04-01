//
//  StarWarApi.swift
//  problem-solving-swift
//
//  Created by Avijeet on 31/03/24.
//

import Foundation

func sendRequest<T: Codable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
    let request = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if let error = error {
            completion(.failure(error))
        }
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            return
        }
        
        guard let data = data else {
            return
        }
        
        do {
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            completion(.success(decodedData))
        } catch (let error) {
            completion(.failure(error))
        }
    }
    
    task.resume()
}
