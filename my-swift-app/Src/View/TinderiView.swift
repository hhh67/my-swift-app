//
//  TinderiView.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

enum TinderViewHeaderMenu {
    case tinder, good, comment, profile
}

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
    @State var selectedItem: TinderViewHeaderMenu = .tinder
    
    var body: some View {
        VStack {
            TinderViewHeader(
                _frameWidth: frameWidth,
                _selectedItem: selectedItem
            )
            
            Text("Hello world")
                .padding()
                .frame(
                    width: frameWidth,
                    height: frameHeight * 0.6
                )
                .background(.red)
            
            TinderViewFooter(
                _frameWidth: frameWidth,
                _frameHeight: frameHeight
            )
        }
    }
}
