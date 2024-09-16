//
//  Models.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import Foundation

struct Brand: Identifiable,Hashable,Codable {
    
    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]
    
}
