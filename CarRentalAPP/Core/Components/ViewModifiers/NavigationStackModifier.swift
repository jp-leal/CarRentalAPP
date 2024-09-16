//
//  NavigationStackModifier.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background{
                    Color(.systemGray6)
            }
            .ignoresSafeArea()
            .navigationTitle("Buscar Carros")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.1))
                        .frame(width:45,height: 45)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.white)
                        }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image("joao")
                        .resizable()
                        .frame(width:45,height: 45)
                        .scaledToFill()
                        .clipShape(Circle())
                }
            }
        
    }
}

extension View {
    func navigationStackModifier() -> some View {
        modifier(NavigationStackModifier())
    }
}
