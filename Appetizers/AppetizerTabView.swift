//
//  ContentView.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 10/08/22.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.init("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
