//
//  SearchParams.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation

struct SearchParams {
    var lat: Double
    var lon: Double
    var radius: Int
    var format: String
    var nojsoncallback: String
    var per_page: Int
    var page: Int
}
