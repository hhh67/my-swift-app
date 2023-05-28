//
//  TinderViewFooter.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderViewFooter: View {
    var _frameWidth: CGFloat
    var _frameHeight: CGFloat
    
    var body: some View {
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
        .frame(
            width: _frameWidth,
            height: _frameHeight * 0.1
        )
    }
}
