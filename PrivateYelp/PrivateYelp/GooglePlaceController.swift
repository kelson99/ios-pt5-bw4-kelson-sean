//
//  GooglePlaceController.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/24/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import Foundation

class GooglePlaceController {
    let apiKey = "AIzaSyBOCR2g9hdinpw2L4OPqdVfghaM5R22JUQ"
    let baseURL = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json")!
    
    func getNearbyPlace(latitude: String, longitude: String, completion: @escaping ([LSIPlace]?, Error?) -> Void) {
        
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        
        let queryItems = [
            URLQueryItem(name: "location", value: "\(latitude),\(longitude)"),
            URLQueryItem(name: "radius", value: "20"),
            URLQueryItem(name: "key", value: apiKey)
        ]
        
        urlComponents?.queryItems = queryItems
        
        guard let url = urlComponents?.url else {
            print("Error creating URL from components")
            completion(nil, nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Error fetching places: \(error)")
                
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            
            guard let data = data else {
                print("No data")
                
                DispatchQueue.main.async {
                    completion(nil, nil)
                }
                return
            }
            
            print(data)
            
            guard let dictionary = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0)) as? [String : Any] else {
                NSLog("error converting json to dictionary")
                completion(nil, nil)
                return
            }
            
            guard let resultsArray = dictionary["results"] as? Array<[String: Any]> else {
                NSLog("error getting results array")
                completion(nil, nil)
                return
            }
            
            var allPlaces = [LSIPlace]()
            for item in resultsArray {
                allPlaces.append(LSIPlace(dictionary: item))
            }
            
            DispatchQueue.main.async {
                completion(allPlaces, nil)
            }
            
        }.resume()
    }
    
}


