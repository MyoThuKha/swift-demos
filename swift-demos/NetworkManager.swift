//
//  NetworkManager.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 7/21/24.
//

import Foundation
import SwiftUI


class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let cache = NSCache<NSString,UIImage>()
    
    
    func get(fromUrlString url : String, completed: @escaping ()-> Void){
        guard let url = URL(string: url) else{
            return
        }
        
        
        URLSession.shared.dataTask(with: URLRequest(url: url)){data,response,error in
        }
        
    }
    
    /// Download an image from network
    /// - Parameters:
    ///   - imageUrl: string url of a network image
    ///   - completed: closure returns UIImage if success and nil if failure
    func downloadImage(fromUrlString imageUrl: String,completed: @escaping (UIImage?)-> Void){
        
        // create key from url String
        let cacheKey = NSString(string: imageUrl)
        
        //check the cache for images, if exist return image instead of downloading again.
        
        if let cache = cache.object(forKey: cacheKey) {
            completed(cache)
            return
        }
        
        
        guard let url = URL(string: imageUrl) else{
            completed(nil)
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            
            // check if error occour while requesting data
            if let _ = error {
                completed(nil)
                return
            }
            
            
            // check the status code and the response is ok.
            guard let res = response as? HTTPURLResponse, res.statusCode == 200 else {
                completed(nil)
                return
            }
            
            // check the data
            guard let data = data, let image = UIImage(data: data) else{
                completed(nil)
                return
            }
            
//            save to the cache
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
            
        }
        
        task.resume()
        
    }
    
}
