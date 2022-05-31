//
//  MainTabView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 31/5/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
            }
            SearchView().tabItem {
                Image(systemName: "magnifyingglass")
            }
            NotificationsView().tabItem {
                Image(systemName: "bell")
            }
            MessagesView().tabItem {
                Image(systemName: "house")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            // Small profile image -> opens the menu.
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { }) {
                    Circle()
                        .frame(width: 40)
                        .aspectRatio(1, contentMode: .fill)
                }
            }
            
            // Button to change some preferences.
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { }) {
                    Image(systemName: "star")
                }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainTabView()
        }
    }
}
