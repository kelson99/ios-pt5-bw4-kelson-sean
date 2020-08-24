//
//  Place.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/24/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import Foundation

struct PlaceResults: Decodable {
    let results: [Place]
}

class Place: NSObject, Decodable {
    
    let name: String
    let vicinity: String
    
    enum PlaceCodingKeys: String, CodingKey {
        case name
        case vicinity
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: PlaceCodingKeys.self)

        self.name = try container.decode(String.self, forKey: .name)
        self.vicinity = try container.decode(String.self, forKey: .vicinity)
    }
    
}
