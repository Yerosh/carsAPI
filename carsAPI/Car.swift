//
//  Car.swift
//  carsAPI
//
//  Created by Yernur Adilbek on 11/17/24.
//

import Foundation
import SwiftyJSON

struct Car {
    var name = ""
    var country = ""
    var creator = ""
    var flag = ""
    var logo = ""
    
    
    init(json: JSON) {
        if let jsonName = json["name"].string {
            name = jsonName
        }
        if let jsonCountry = json["country"].string {
            country = jsonCountry
        }
        if let jsonCreator = json["creator"].string {
            creator = jsonCreator
        }
        if let jsonFlag = json["flag"].string {
            flag = jsonFlag
        }
        if let jsonLogo = json["logo"].string {
            logo = jsonLogo
        }
    }
    
}
