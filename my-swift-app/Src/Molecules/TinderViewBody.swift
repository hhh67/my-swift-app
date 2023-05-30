//
//  TinderViewBody.swift
//  my-swift-app
//
//  Created by 星野秀弥 on 2023/05/28.
//

import SwiftUI

struct TinderViewBody: View {
    var _frameWidth: CGFloat
    var _frameHeight: CGFloat
    
    var body: some View {
        GeometryReader(content: {geometry in
            ZStack {
                ZStack {
                    Image(systemName: "flame")
                        .resizable()
                        .scaledToFill()
                        .background(.red)
                    
                    LinearGradient(
                        colors: [
                            .clear,
                            Color(0x000000, alpha: 0.7)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    
                }
                .frame(
                    width: geometry.size.width * 0.9,
                    height: geometry.size.height
                )
                .cornerRadius(10)
                .shadow(
                    color: .black,
                    radius: 5
                )
                
                VStack {
                    CustomText(
                        _text: "Test",
                        _size: 44,
                        _weight: Font.Weight.heavy
                    )
                    CustomText(
                        _text: "千葉県",
                        _size: 20
                    )
                    CustomText(
                        _text: "テストです",
                        _size: 24
                    )
                    CustomText(
                        _text: "私はテストデータです",
                        _size: 24
                    )
                }
            }
            
        })
        .offset(
            x: UIScreen.main.bounds.size.width * 0.05,
            y: UIScreen.main.bounds.size.height * 0.005
        )
    }
}

struct CustomText: View {
    var _text: String
    var _size: CGFloat
    var _weight: Font.Weight? = Font.Weight.regular
    var _foregroundColor: Color? = Color.white
    
    var body: some View {
        Text(_text)
            .foregroundColor(_foregroundColor)
            .font(
                .system(
                    size: _size,
                    weight: _weight
                )
            )
    }
}
