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
            Text("page 1")
                .tabItem {
                    Image(systemName: "cube.fill")
                    Text("Components")
                }

            Text("page 2")
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Foundations")
                }

            Text("page 3")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
