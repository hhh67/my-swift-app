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
    // 縦幅
    private var frameHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                TinderHeaderButton(
                    _systemName: "flame",
                    _width: frameWidth * 0.25
                )
                TinderHeaderButton(
                    _systemName: "suit.diamond.fill",
                    _width: frameWidth * 0.25
                )
                TinderHeaderButton(
                    _systemName: "bubble.left.fill",
                    _width: frameWidth * 0.25
                )
                TinderHeaderButton(
                    _systemName: "person.fill",
                    _width: frameWidth * 0.25
                )
            }
            .padding()
            .frame(width: frameWidth)
            .background(.red)
            
            Text("Hello world")
                .padding()
                .frame(
                    width: frameWidth,
                    height: frameHeight * 0.6
                )
                .background(.red)
            
            Text("Hello world")
                .padding()
                .frame(width: frameWidth)
                .background(.red)
        }
    }
}
