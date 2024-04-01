//
//  ImageDownloader.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

class ImageDownloader {
    
    weak var delegate: ImageDownloadDelegate?
    
    func downloadImageFromServer(with url: URL) {
        let task =  URLSession.shared.dataTask(with: url) { (imageData, response, error) in
            self.delegate?.didFinishDownloadingImage(imageData: imageData)
        }
        task.resume()
    }
}
