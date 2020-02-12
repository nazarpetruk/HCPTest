//
//  Doctor.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import Foundation


struct Doctor : Codable{
    
    let firstName : String
    let lastName : String
    let middleName : String
    let credentials : String
    let enumerationDate : String
    let status : String
    
    let countryName : String
    let adress :  String
    let city : String
    let state : String
    let phoneNumber : String
    let licenceNbr : String
    
    
    
    init(firstName: String, lastName: String, middleName: String, credentials: String, enumerationDate : String, status: String, countryName : String, address: String, city: String, state: String, phoneNumber: String, licenceNmbr : String) {
        self.adress = address
        self.city = city
        self.state = state
        self.countryName = countryName
        self.credentials = credentials
        self.status = status
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.phoneNumber = phoneNumber
        self.enumerationDate = enumerationDate
        self.licenceNbr = licenceNmbr
    }
}
