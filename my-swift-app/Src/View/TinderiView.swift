//
//  TinderiView.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderView: View {
    // 横幅
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        VStack {
            Text("Hello world")
                .padding()
                .frame(width: frameWidth)
                .background(.red)
            Text("Hello world")
                .padding()
                .frame(
                    width: frameWidth,
                    height: UIScreen.main.bounds.height * 0.6
                )
                .background(.red)
            Text("Hello world")
                .padding()
                .frame(width: frameWidth)
                .background(.red)
        }
    }
}
