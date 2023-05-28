//
//  TinderHeaderButton.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderHeaderButton: View {
    var _systemName: String
    var _width: CGFloat
    var _selected: Bool
    var _action: (() -> Void)? = nil
    
    var body: some View {
        Button (action: _action ?? {}, label: {
            Image(systemName: _systemName)
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30, alignment: .center)
        })
        .frame(width: _width)
        .foregroundColor(
            _selected == true ? .red : Color(0xCCCCCC, alpha: 1.0)
        )
    }
}
