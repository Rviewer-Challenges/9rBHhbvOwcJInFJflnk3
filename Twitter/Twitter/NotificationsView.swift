//
//  NotificationsView.swift
//  Twitter
//
//  Created by Francisco Javier Gallego Lahera on 31/5/22.
//  Copyright © 2022 Francisco Javier Gallego Lahera. All rights reserved.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        Text("NotificationsView")
            .navigationTitle("Notifications")
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NotificationsView()
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
