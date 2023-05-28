//
//  ContentView.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct ContentView: View {  
    var body: some View {
        TabView {
            ComponentsView()
                .tabItem {
                    Image(systemName: "cube.fill")
                    Text("Components")
                }

            FoundationsView()
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Foundations")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            TinderView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Tinder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
