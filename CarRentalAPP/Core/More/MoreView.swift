//
//  MoreView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct MoreView: View {
    var parametersOptions: [(String, String)]
    
    @State private var showAlert: Bool = false
    @State private var displayEditProfileView: Bool = false

    init() {
        self.parametersOptions = [
            ("Conta", "person"),
            ("Como Funciona", "key.horizontal"),
            ("Contato Suporte", "person.wave.2"),
            ("Legal", "newspaper"),
            ("Licenças", "newspaper")
        ]
    }

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 30) {
                    Button(action: {
                        displayEditProfileView.toggle()
                    }, label: {
                        HeaderView()
                    })

                    VStack(spacing: 60) {
                        ForEach(parametersOptions, id: \.0) { option in
                            HStack {
                                Image(systemName: option.1)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, 10)
                                Text(option.0)
                                Spacer()
                            }
                        }
                    }
                    .padding(.horizontal)
                    Divider()
                        .padding(.vertical)
                    VStack(alignment: .leading, spacing: 30) {
                        Button(action: {
                            showAlert.toggle()
                        }, label: {
                            Text("Sair")
                                .foregroundStyle(.black)
                        })
                        Text("versão 1.0")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical, 40)
            }
            .alert("Tem certeza que deseja sair?", isPresented: $showAlert, actions: {
                Button("Sair") { }
                Button("Cancel", role: .cancel) {}
            })
            .background(Color(.systemGray6))
            .fullScreenCover(isPresented: $displayEditProfileView, content: {
                EditProfileView()
            })
        }
    }
}


#Preview {
    MoreView()
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {
                Image("joao")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(.gray)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Joao Leal")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("Editar Perfil")
                        .foregroundStyle(.blue)
                }
                Spacer()
            }
            .padding()
            Divider()
        }
    }
}
