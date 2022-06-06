//
//  TweetView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 6/6/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct TweetView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Elon Musk")
                            .bold()
                        Image(systemName: "seal.fill")
                            .foregroundColor(.blue)
                        HStack(spacing: 4) {
                            Text("@elonmusk")
                            Text("·")
                            Text("5h")
                            Spacer()
                                
                            Button(action: { }) {
                                Image(systemName: "ellipsis")
                            }
                        }
                        .foregroundColor(.gray)
                    }
                    
                    Text("The acid test for any two competing socioeconomic systems is which side needs to build a wall to keep people from scaping? That's the bad one!")
                    
                    // Action buttons
                    
                    HStack(spacing: 40) {
                        Button(action: { }) {
                            Image(systemName: "message")
                        }
                        Button(action: { }) {
                            Image(systemName: "arrow.2.squarepath")
                        }
                        Button(action: { }) {
                            Image(systemName: "heart")
                        }
                        Button(action: { }) {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                    .foregroundColor(.gray)
                    .padding(1)
                }
            }
            
            Divider()
                .padding(.vertical, 2)
        }
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView()
            .padding(.horizontal)
            .previewLayout(.fixed(width: 430, height: 200))
    }
}
