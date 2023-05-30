//
//  ContentView.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct ContentView: View {
    // 初期選択状態
    @State private var selection = 4
    
    var body: some View {
        TabView(selection: $selection) {
            ComponentsView()
                .tabItem {
                    Image(systemName: "cube")
                    Text("Components")
                }
                .tag(1)

            FoundationsView()
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Foundations")
                }
                .tag(2)

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(3)
            TinderView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Tinder")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
