//
//  NetworkImageViewModel.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 7/21/24.
//

import Foundation
import Observation
import SwiftUI


@Observable class NetworkImageViewModel {
    var image: Image?
    
    
    func getImage(fromUrl imageUrl: String){
        NetworkManager.shared.downloadImage(fromUrlString: imageUrl) { uiImage in
            if let uiImage = uiImage {
                DispatchQueue.main.async {
                    self.image = Image(uiImage: uiImage)
                }
            }
        }
    }
}
