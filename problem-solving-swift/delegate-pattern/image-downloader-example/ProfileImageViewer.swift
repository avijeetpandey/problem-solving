//
//  ProfileImageViewer.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

class ProfileImageViewer {
    var imageDownloader: ImageDownloader?
    
    init(_imageDownloader: ImageDownloader) {
        imageDownloader = _imageDownloader
        imageDownloader?.delegate = self
        imageDownloader?.downloadImageFromServer(with: URL(string: "https://www.syanart.com/wp-content/uploads/bfi_thumb/Dragon-Ball-Super-Goku-Ultra-Instinct-White-4K-1024x576-3700nnnlymflyci783q8e8.jpg")!)
    }
}


extension ProfileImageViewer: ImageDownloadDelegate {
    func didFinishDownloadingImage(imageData: Data?) {
        debugPrint("Image Data for the downloaded image is ")
        print(imageData)
    }
}
