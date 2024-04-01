//
//  ImageDownloadProtocol.swift
//  problem-solving-swift
//
//  Created by Avijeet on 01/04/24.
//

import Foundation

protocol ImageDownloadDelegate: AnyObject {
    func didFinishDownloadingImage(imageData: Data?)
}
