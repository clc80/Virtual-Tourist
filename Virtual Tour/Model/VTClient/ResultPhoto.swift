//
//  ResultPhoto.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation

enum Result<ResultType> {
    case results(ResultType)
    case error(Error)
    case success(Bool)
}
