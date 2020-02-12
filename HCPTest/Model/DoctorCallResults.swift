//
//  DoctorList.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import Foundation


struct DoctorCallResults: Codable {
    
    let results : [DoctorListModel]
    let count : Int
    
    enum CodingKeys : String, CodingKey {
        case results
        case count = "result_count"
    }
}
