//
//  VirtualTourPointAnnotation.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation
import MapKit

class VirtualTourPointAnnotation: MKPointAnnotation {
    
    var pinModel: Pin?
 
    init(pinModel: Pin) {
        self.pinModel = pinModel
        super.init()
    }
}
