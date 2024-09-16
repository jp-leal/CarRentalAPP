//
//  EditProfileView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var about: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
                VStack(alignment: .leading,spacing: 20) {
                    Spacer().frame(height: 40)
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "multiply")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.black)
                            .padding(.bottom)
                    })
                    Text("Foto de Perfil")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Por favor, adicione uma foto de perfil que mostre claramente o seu rosto. Isso ajudará os anfitriões e hóspedes a reconhecê-lo no início da viagem.")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Alterar foto de perfil")
                            .foregroundStyle(.black)
                            .padding()
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.black,lineWidth: 1)
                            }
                    })
                    Text("Sobre")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Conte aos anfitriões e hóspedes sobre você e por que você é uma pessoa responsável e confiável.Compartilhe suas experiências de viagem favoritas, seus hobbies, seu carro dos sonhos ou sua experiência de direção. Sinta-se à vontade para incluir links para seus perfis no LinkedIn, Twitter ou Facebook para que possam conhecê-lo ainda melhor.")
                    Text("Sobre")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    TextField("Escreva sobre você", text: $about)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Lives")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    TextField("Florinanópolis, Santa Catarina", text: $about)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Works")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    TextField("Ford / Fiat / Jeep", text: $about)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Escolaridade")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    TextField("Univali", text: $about)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Idiomas")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    TextField("Português,Francês", text: $about)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                        .frame(height: 120)
                }
                .padding()
            }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .background(Color(.systemGray6))
        .overlay {
            VStack {
                Spacer()
                ZStack {
                    Color.white
                        .frame(width: UIScreen.main.bounds.width, height: 120)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Salvar")
                            .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
            }
            .ignoresSafeArea()
           
        }
    }
}

#Preview {
    EditProfileView()
}
