//
//  CustomSearchBar.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct CustomSearchBar: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundStyle(.white)
                Text("Buscar um Carro...")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Spacer()
                
                
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
        })
        
    }
}

#Preview {
    CustomSearchBar()
}
