//
//  HomeView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 31/5/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var dragOffset = CGSize.zero
    var body: some View {
        VStack {
            HStack {
                profileButton
                Spacer()
                Text("🦋")
                    .font(.largeTitle)
                Spacer()
                preferencesButton
            }
            .frame(height: 40)
            .padding(.horizontal)
            
            ScrollView {
                ForEach(1..<10) { _ in
                    TweetView()
                        .padding(.leading, 5)
                }
            }
            .padding()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    var profileButton: some View {
        Button(action: { }) {
            Circle()
                .fill(.blue)
                .frame(width: 40, height: 40)
        }
    }
    
    var preferencesButton: some View {
        Button(action: { }) {
            Image(systemName: "star")
        }
    }
}
