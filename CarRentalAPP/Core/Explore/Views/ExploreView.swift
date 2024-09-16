//
//  ExploreView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    private var widthSearchBar: CGFloat = UIScreen.main.bounds.width - 30
    @StateObject var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ZStack {
                    GradientColorBackground()
                    VStack {
                        Spacer()
                            .frame(height: 150)
                        CustomSearchBar()
                        Spacer()
                            .frame(height: 60)
                        PopularBrandsView(viewModel: viewModel)
                        TopCarsView(viewModel: viewModel)
                        Spacer()
                            .frame(height: 50)
                    }
                }
                    
                    
            }
            .navigationStackModifier()
        }
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel())
}

struct GradientColorBackground: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [Color(.systemGray),.blue], startPoint: .top, endPoint: .center)
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height / 2)
            Spacer()
        }
    }
}
