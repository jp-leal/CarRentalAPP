//
//  FavoritesView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel: ExploreViewModel
    var favoriteCars: [Car]
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        favoriteCars = viewModel.cars.filter({ $0.isFavorite == true })
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(favoriteCars) { car in
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
            .navigationTitle("Favoritos")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    FavoritesView(viewModel: ExploreViewModel())
}
