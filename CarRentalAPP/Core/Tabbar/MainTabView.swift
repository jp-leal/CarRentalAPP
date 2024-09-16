//
//  MainTabView.swift
//  CarRentalAPP
//
//  Created by Joao Leal on 9/16/24.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var viewModel = ExploreViewModel()
        @State private var selectedTab: Int = 0
        var body: some View {
            TabView {
                ExploreView(viewModel: viewModel)
                    .tabItem {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                            Text("Buscar")
                        }
                    }
                    .onAppear{
                        selectedTab = 0
                    }
                FavoritesView(viewModel: viewModel)
                    .tabItem {
                        VStack {
                            Image(systemName: "heart")
                                .environment(\.symbolVariants,selectedTab == 1 ? .fill : .none)
                            Text("Favoritos")
                        }
                    }
                    .onAppear{
                        selectedTab = 1
                    }
                TripsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "road.lanes")
                                .environment(\.symbolVariants,selectedTab == 2 ? .fill : .none)
                            Text("Minha Viagem")
                        }
                    }
                    .onAppear{
                        selectedTab = 2
                    }
                InboxView()
                    .tabItem {
                        VStack {
                            Image(systemName: "bubble")
                                .environment(\.symbolVariants,selectedTab == 3 ? .fill : .none)
                            Text("Inbox")
                        }
                    }
                    .onAppear{
                        selectedTab = 3
                    }
                MoreView()
                    .tabItem {
                        VStack {
                            Image(systemName: "ellipsis")
                                .environment(\.symbolVariants,selectedTab == 4 ? .fill : .none)
                            Text("Perfil")
                        }
                    }
                    .onAppear{
                        selectedTab = 4
                    }
            }
            .onAppear{
                UITabBar.appearance().backgroundColor = .white
            }
        }
    }

#Preview {
    MainTabView()
}
