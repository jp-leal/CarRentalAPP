//
//  InboxView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

enum InboxTabSelection {
    case Messages
    case Notifications
}

struct InboxView: View {
    var barWidth: CGFloat = (UIScreen.main.bounds.width / 2) - 20
    @State var tabSelection: InboxTabSelection = .Messages
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    HStack {
                        Button(action: {
                            withAnimation(.spring) {
                                tabSelection = .Messages
                            }
                        }, label: {
                            VStack {
                                Text("Mensagens")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(tabSelection == .Messages ? .blue : Color(.darkGray))
                                    .frame(width: barWidth, alignment: .center)
                                Rectangle()
                                    .frame(width: barWidth, height: 1)
                                    .foregroundStyle(tabSelection == .Messages ? .blue : .clear)
                            }
                        })
                        
                        Button(action: {
                            withAnimation(.spring) {
                                tabSelection = .Notifications
                            }
                        }, label: {
                            VStack {
                                Text("Notificações")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(tabSelection == .Notifications ? .blue : Color(.darkGray))
                                    .frame(width: barWidth, alignment: .center)
                                Rectangle()
                                    .frame(width: barWidth, height: 1)
                                    .foregroundStyle(tabSelection == .Notifications ? .blue : .clear)
                            }
                        })
                    }
                    switch tabSelection {
                    case .Messages:
                        EmptyElementView(imageName: "message", title: "Nenhuma mensagem")
                    case .Notifications:
                        NotificationsView()
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InboxView()
}
