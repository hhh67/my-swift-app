//
//  TinderTopHeader.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderViewHeader: View {
    var _frameWidth: CGFloat
    @State var _selectedItem: TinderViewHeaderMenu
    
    var body: some View {
        HStack(spacing: 0) {
            TinderHeaderButton(
                _systemName: "flame",
                _width: _frameWidth * 0.25,
                _selected: _selectedItem == .tinder,
                _action: {
                    _selectedItem = .tinder
                }
            )
            TinderHeaderButton(
                _systemName: "suit.diamond.fill",
                _width: _frameWidth * 0.25,
                _selected: _selectedItem == .good,
                _action: {
                    _selectedItem = .good
                }
            )
            TinderHeaderButton(
                _systemName: "bubble.left.fill",
                _width: _frameWidth * 0.25,
                _selected: _selectedItem == .comment,
                _action: {
                    _selectedItem = .comment
                }
            )
            TinderHeaderButton(
                _systemName: "person.fill",
                _width: _frameWidth * 0.25,
                _selected: _selectedItem == .profile,
                _action: {
                    _selectedItem = .profile
                }
            )
        }
        .padding()
        .frame(width: _frameWidth)
    }
}
