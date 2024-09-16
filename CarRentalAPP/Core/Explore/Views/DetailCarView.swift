//
//  DetailCarView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct DetailCarView: View {
    let index: Int
    @StateObject private var viewModel: ExploreViewModel
    
    init(viewModel: ExploreViewModel,index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.index = index
    }
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading,spacing: 15) {
                ImageViewPager(viewModel: viewModel, index: index)
                VStack(alignment: .leading,spacing: 15) {
                    Text(viewModel.cars[index].carName)
                        .font(.headline)
                        .fontWeight(.bold)
                    HStack(spacing: 2) {
                        Text(String(format: "%.1f", viewModel.cars[index].rating))
                        
                        Image(systemName: "star.fill")
                            .foregroundStyle(.orange)
                    }
                }
                .padding(.horizontal)
                Divider()
                TripDateView()
                Divider()
                LocationView(title: "Retirada & Entrega", message: "Florianópolis, SC  /  Curitiba, PR")
                Divider()
                CancellationView(title: "Política de Cancelamento", message: "Cancelamento Gratuito")
                Divider()
                CarInfoView(title: "Distância", message: viewModel.cars[index].maxDistance == nil ? "Ilimitada" : "\(viewModel.cars[index].maxDistance ?? 0) km")
                Divider()
                InsuranceInfoView(title: "Proteção & Seguro", message: viewModel.cars[index].insurance)
                Divider()
                CarBasicsView(title: "Básico", numberOfSeats: viewModel.cars[index].numberOfSeats, numberOfDoors: viewModel.cars[index].numberOfDoors, gasType: viewModel.cars[index].GasType)
                Divider()
                CarInfoView(title: "Descrição", message: viewModel.cars[index].description)
                Divider()
                HostView(title: "Dono", message:  viewModel.cars[index].hostName, imageName: viewModel.cars[index].hostImageName, joinDate:viewModel.cars[index].hostJoinDate)
                Spacer()
                    .frame(height: 120)
                
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .background(Color(.systemGray6))
        .toolbar(.hidden, for: .tabBar)
        .overlay {
            VStack {
                Spacer()
                ZStack {
                    Color.white
                        .frame(width: UIScreen.main.bounds.width, height: 120)
                    HStack {
                        VStack {
                            Text("\(viewModel.cars[index].pricePerDay)R$ por dia")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("\(viewModel.cars[index].pricePerDay * 3)R$ est. total")
                                .font(.subheadline)
                                .underline()
                        }
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Continue")
                                .foregroundStyle(.white)
                                .frame(width: 120, height: 35)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        })
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical)
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    DetailCarView(viewModel: ExploreViewModel(), index: 0)
}

struct CarInfoView: View {
    var title: String
    var message: String
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            Text(message)
        }
        .padding(.horizontal)
    }
}

struct LocationView: View {
    var title: String
    var message: String
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            HStack(spacing: 10) {
                Image(systemName: "mappin.and.ellipse.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    Text(message)
            }
            
        }
        .padding(.horizontal)
    }
}

struct CancellationView: View {
    var title: String
    var message: String
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            HStack {
                Image(systemName: "hand.thumbsup")
                VStack(alignment: .leading) {
                    Text(message)
                    Text("Reembolso total até: ")
                        .font(.footnote)
                        .foregroundStyle(.gray) +
                    Text(formattedDate())
                        .font(.footnote)
                        .foregroundStyle(.gray)

                   

                }
            }
            
        }
        .padding(.horizontal)
    }
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR") // Set locale to Portuguese
        dateFormatter.dateStyle = .medium // You can adjust the style (short, medium, long, full)
        return dateFormatter.string(from: Date())
    }
}

struct InsuranceInfoView: View {
    var title: String
    var message: String
    @State private var showInsuranceSheet: Bool = false
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            HStack {
                Text("Seguro "+message)
                Spacer()
                Button(action: {
                    showInsuranceSheet.toggle()
                }, label: {
                    Text("+ informações")
                        .font(.headline)
                        .fontWeight(.bold)
                })
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $showInsuranceSheet) {
           MyInsuranceView()
        }
    }
}

struct CarBasicsView: View {
    var title: String
    var numberOfSeats: Int
    var numberOfDoors: Int
    var gasType: String
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    VStack {
                        Image(systemName: "carseat.left.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("\(numberOfSeats) assentos")
                    }
                    VStack {
                        Image(systemName: "car.window.right")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("\(numberOfDoors) portas")
                    }
                    VStack {
                        Image(systemName: "fuelpump")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text(gasType)
                    }
                }
            }
            .scrollIndicators(.hidden)
            
        }
        .padding(.horizontal)
    }
}

struct HostView: View {
    var title: String
    var message: String
    var imageName: String
    var joinDate: String
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(message)
                        .fontWeight(.bold)
                    Text("Entrou \(joinDate)")
                        .font(.subheadline)
                }
            }
            
        }
        .padding(.horizontal)
    }
}
