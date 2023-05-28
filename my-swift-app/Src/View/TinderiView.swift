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
    
    // headerの選択状態
    enum SelectedItem {
        case tinder, good, comment, profile
    }
    @State var selectedItem: SelectedItem = .tinder
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                TinderHeaderButton(
                    _systemName: "flame",
                    _width: frameWidth * 0.25,
                    _selected: selectedItem == .tinder,
                    _action: {
                        selectedItem = .tinder
                    }
                )
                TinderHeaderButton(
                    _systemName: "suit.diamond.fill",
                    _width: frameWidth * 0.25,
                    _selected: selectedItem == .good,
                    _action: {
                        selectedItem = .good
                    }
                )
                TinderHeaderButton(
                    _systemName: "bubble.left.fill",
                    _width: frameWidth * 0.25,
                    _selected: selectedItem == .comment,
                    _action: {
                        selectedItem = .comment
                    }
                )
                TinderHeaderButton(
                    _systemName: "person.fill",
                    _width: frameWidth * 0.25,
                    _selected: selectedItem == .profile,
                    _action: {
                        selectedItem = .profile
                    }
                )
            }
            .padding()
            .frame(width: frameWidth)
            
            Text("Hello world")
                .padding()
                .frame(
                    width: frameWidth,
                    height: frameHeight * 0.6
                )
                .background(.red)
            
            let smallFooterBottonSize: CGFloat = 28
            let largeFooterBottonSize: CGFloat = 36
            HStack(spacing: 24) {
                TinderFooterButton(
                    _systemName: "arrow.clockwise",
                    _size: smallFooterBottonSize,
                    _iconColor: Color(0xEEAA77, alpha: 1.0)
                )
                TinderFooterButton(
                    _systemName: "xmark",
                    _size: largeFooterBottonSize,
                    _iconColor: Color(0xFF6666, alpha: 1.0)
                )
                TinderFooterButton(
                    _systemName: "star.fill",
                    _size: smallFooterBottonSize,
                    _iconColor: Color(0x6688FF, alpha: 1.0)
                )
                TinderFooterButton(
                    _systemName: "heart.fill",
                    _size: largeFooterBottonSize,
                    _iconColor: Color(0x88EEBB, alpha: 1.0)
                )
                TinderFooterButton(
                    _systemName: "bolt.fill",
                    _size: smallFooterBottonSize,
                    _iconColor: Color(0xEE55FF, alpha: 1.0)
                )
            }
            .padding()
            .frame(width: frameWidth, height: frameHeight * 0.1)
        }
    }
}
