//
//  Basics.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import Foundation

struct Basic : Codable {
    let firstName : String
    let lastName: String
    let middleName: String
    let credentials : String
    let dateEnum : String
    let status : String
    let solePropr : String
    let gender : String
    let lastUpdate : String
    let name : String
    
    enum CodingKeys : String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case middleName = "middle_name"
        case credentials = "credential"
        case dateEnum = "enumeration_date"
        case lastUpdate = "last_updated"
        case status
        case solePropr = "sole_proprietor"
        case gender
        case name
    }
}
