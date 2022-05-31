//
//  SearchView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 31/5/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text("SearchView")
            .navigationTitle("Test")
            
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchView()
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
