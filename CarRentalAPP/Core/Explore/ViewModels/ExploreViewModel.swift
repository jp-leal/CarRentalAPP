//
//  ExploreViewModel.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var brands: [Brand] = [
                                      Brand(id: UUID().uuidString, brandName: "Mercedes",imageName: "mercedes", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "BMW",imageName: "bmw", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Jaguar",imageName: "jaguar", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Audi",imageName: "audi", carIds: [])
                                      ]
    
    @Published var cars: [Car] = [
        .init(id: UUID().uuidString, carName: "MERCEDES-BENZ C-CLASS", rating: 4.9, brand: "Mercedes", pricePerDay: 40, description: "Este Mercedes 2023 é o carro perfeito para se locomover pela cidade ou reservar para uma escapada de fim de semana!  É fácil de estacionar, divertido de dirigir e econômico no consumo de combustível!", mainImageName: "merecedesC", imagesNames: ["mercedes_c_0","mercedes_c_1","mercedes_c_2","mercedes_c_3","mercedes_c_4"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Formiga Veiculos", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: false),
        .init(id: UUID().uuidString, carName: "BMW X1", rating: 4.8, brand: "BMW", pricePerDay: 36, description: "Este BMW 2021 é o carro perfeito para se locomover pela cidade ou reservar para uma escapada de fim de semana! É fácil de estacionar, divertido de dirigir e econômico no consumo de combustível!", mainImageName: "bmwx1", imagesNames: ["bmwx1_1","bmwx1_2","bmwx1_3"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Formiga Veiculos", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: true)
    ]
    
    
    
}
