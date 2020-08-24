//
//  GooglePlaceController.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/24/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import Foundation

class GooglePlaceController {
    let apiKey = "AIzaSyC6N-NxvomVfOIh3L6IdPrNxqKjiStPqiY"
    let baseURL = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json")!
    
    func getNearbyPlace(latitude: String, longitude: String, completion: @escaping ([Place]?, Error?) -> Void) {
        
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        
        let queryItems = [
            URLQueryItem(name: "location", value: "\(latitude),\(longitude)"),
            URLQueryItem(name: "radius", value: "20"),
            URLQueryItem(name: "key", value: apiKey)
        ]
        
        urlComponents?.queryItems = queryItems
        print("URL is: \(urlComponents?.url)")
        
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
            
            do {
                let decoder = JSONDecoder()
                
                let placeResults = try decoder.decode(PlaceResults.self, from: data)
                
                DispatchQueue.main.async {
                    completion(placeResults.results, nil)
                }
                
            } catch {
                print("Decoding error: \(error)")
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
            
        }.resume()
    }
    
}


