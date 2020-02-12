//
//  Adresses.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import Foundation


struct Addresses : Codable {
    let countryName : String
    let adress : String
    let city : String
    let state : String
    let phoneNumber : String
    let extraAdress : String
    let postalCode : String
    let adressPurpose : String
    let adressType : String
    let countryCode : String
    //let faxNumber : String
    
    enum CodingKeys : String, CodingKey {
        case countryCode = "country_code"
        case countryName = "country_name"
        case adress = "address_1"
        case city
        case state
        case phoneNumber = "telephone_number"
        case extraAdress = "address_2"
        case adressType = "address_type"
        case adressPurpose = "address_purpose"
        case postalCode = ""
        //case faxNumber = "fax_number"
    }
}
