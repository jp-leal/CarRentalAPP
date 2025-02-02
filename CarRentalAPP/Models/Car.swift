//
//  Car.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import Foundation

struct Car: Identifiable,Codable,Hashable {
    
    let id: String
    let carName: String
    var rating: Double
    let brand: String
    var pricePerDay: Int
    var description: String
    var mainImageName: String
    var imagesNames: [String]
    var insurance: String
    var maxDistance: Float?
    var numberOfSeats: Int
    var numberOfDoors: Int
    var GasType: String
    var hostName: String
    var hostImageName: String
    var hostJoinDate: String
    var isFavorite: Bool
}
