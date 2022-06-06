//
//  MainTabView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 31/5/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = Tab.home
    @ObservedObject private var sideMenu = SideMenuState()
    @State private var dragOffset = CGSize.zero
    
    var body: some View {
        ZStack(alignment: .leading) {
            TabView(selection: $selectedTab) {
                HomeView().tag(Tab.home)
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView().tag(Tab.search)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                NotificationsView().tag(Tab.notifications)
                    .tabItem {
                        Image(systemName: "bell")
                    }
                MessagesView().tag(Tab.messages)
                    .tabItem {
                        Image(systemName: "house")
                    }
            }
            .environmentObject(sideMenu)
            
            SideMenuView()
                .frame(width: 200)
                .offset(x: sideMenu.isShowing ? 0 : -200, y: 0)
        }
        .navigationBarHidden(true)
        .animation(.easeInOut, value: sideMenu.isShowing)
        .gesture(
            DragGesture()
                .onChanged { value in
                    dragOffset = value.translation
                }
                .onEnded { _ in
                    if dragOffset.width > 0 {
                        sideMenu.isShowing = true
                    } else {
                        sideMenu.isShowing = false
                    }
                }
        )
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainTabView()
        }
    }
}

extension MainTabView {
    class SideMenuState: ObservableObject {
        @Published var isShowing = false
    }
}
