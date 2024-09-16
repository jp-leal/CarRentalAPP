//
//  TripsView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

enum TabSelection {
    case booked
    case history
}

struct TripsView: View {
    var barWidth: CGFloat = (UIScreen.main.bounds.width / 2) - 20
    @State var tabSelection: TabSelection = .booked
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    HStack {
                            Button(action: {
                                withAnimation(.spring) {
                                    tabSelection = .booked
                                }
                            }, label: {
                                VStack {
                                    Text("Agendamentos")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(tabSelection == .booked ? .blue : Color(.darkGray))
                                        .frame(width: barWidth, alignment: .center)
                                    Rectangle()
                                        .frame(width: barWidth, height: 1)
                                        .foregroundStyle(tabSelection == .booked ? .blue : .clear)
                                }
                            })
                            
                            Button(action: {
                                withAnimation(.spring) {
                                    tabSelection = .history
                                }
                            }, label: {
                                VStack {
                                    Text("Histórico")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(tabSelection == .history ? .blue : Color(.darkGray))
                                        .frame(width: barWidth, alignment: .center)
                                    Rectangle()
                                        .frame(width: barWidth, height: 1)
                                        .foregroundStyle(tabSelection == .history ? .blue : .clear)
                                }
                            })
                    }
                    switch tabSelection {
                    case .booked:
                        EmptyElementView(imageName: "car_img", title: "Nenhuma Viagem")
                    case .history:
                        EmptyElementView(imageName: "car_img", title: "Nenhuma Viagem Anterior")
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Agendamentos")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}

#Preview {
    TripsView()
}
