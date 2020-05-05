//
//  SearchResult.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation

struct SearchResult: Codable {
    let photos: PhotosResult
    let stat: String
    
    enum CodingKeys: String, CodingKey {
        case photos
        case stat
    }
}
