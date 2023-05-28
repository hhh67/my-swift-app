//
//  TinderBottomButton.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderFooterButton: View {
    var _systemName: String
    var _size: CGFloat
    var _iconColor: Color
    var _action: (() -> Void)? = nil
    
    var body: some View {
        let backgroundSize: CGFloat = _size + 20
        let iconSize: CGFloat = _size - 15
        
        ZStack {
            Color.white
                .frame(width: backgroundSize, height: backgroundSize)
            
            Button (action: _action ?? {}, label: {
                Image(systemName: _systemName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: iconSize, height: iconSize, alignment:  .center)
            })
            .foregroundColor(_iconColor)
        }
        .cornerRadius(50)
        .shadow(radius: 8)
    }
}
