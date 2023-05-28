//
//  TinderHeaderButton.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderHeaderButton: View {
    var _systemName: String
    var _action: (() -> Void)? = nil
    var _width: CGFloat
    
    var body: some View {
        Button (action: _action ?? {}, label: {
            Image(systemName: _systemName)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
        })
        .frame(width: _width)    }
}
