//
//  TopCarsView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct TopCarsView: View {
    @StateObject var viewModel: ExploreViewModel
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Os Mais Pedidos 🔥")
                .font(.headline)
                .fontWeight(.semibold)
            ForEach (viewModel.cars) { car in
                let index = viewModel.cars.firstIndex(where: {$0 == car}) ?? 0
                NavigationLink {
                    DetailCarView(viewModel: viewModel, index: index)
                        .navigationBarBackButtonHidden()
                } label: {
                    CustomCarView(index: index, viewModel: viewModel)
                }
            }
            
        }
        .padding()
    }
}
