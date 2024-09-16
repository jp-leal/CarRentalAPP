//
//  NotificationsView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Atividade")
                .font(.headline)
                .fontWeight(.bold)
            Divider()
            HStack(alignment: .top,spacing: 15) {
                Circle()
                    .frame(width: 75, height: 75)
                    .overlay {
                        Text("Central de Locação de Carros")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                VStack(alignment: .leading) {
                    Text("Bem vindo à nossa Agência")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("Obrigado por usar nosso aplicativo. Sua aventura começa aqui")
                }
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    NotificationsView()
}
