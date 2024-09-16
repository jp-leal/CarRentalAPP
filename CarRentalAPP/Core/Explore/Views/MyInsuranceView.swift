//
//  MyInsuranceView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct MyInsuranceView: View {
    var body: some View {
        VStack(spacing: 30) {
            Rectangle()
                .frame(width: 60, height: 5)
                .foregroundStyle(Color(.systemGray5))
            Image(systemName: "questionmark.circle")
                .resizable()
                .frame(width: 35, height: 35)
            Text("A nossa proteção possibilita uma coparticipação em caso de danos, avarias, roubo, incêndios e perda total. Caso o acidente tenha envolvido um carro terceiro, ele também estará protegido com o valor da coparticipação padrão para terceiros (R$5.000,00) ou o valor do conserto do veículo, prevalecendo o que for mais barato. A cobertura de danos materiais a terceiros é limitada a R$50.000,00.")
                .font(.subheadline)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MyInsuranceView()
}
