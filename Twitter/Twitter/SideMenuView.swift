//
//  SideMenuView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 2/6/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        Color.teal
            .ignoresSafeArea()
            .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
