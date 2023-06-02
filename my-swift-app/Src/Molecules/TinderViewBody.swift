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
    
    @State var translation: CGSize = .zero
    @State var numbers: Array = [0, 1, 2, 3, 4, 5]
    
    var body: some View {
        GeometryReader(content: {geometry in
            ForEach(numbers, id: \.self) { num in
                ZStack {
                    ZStack {
                        Image(systemName: "flame")
                            .resizable()
                            .scaledToFill()
                            .background(.white)
                        
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
                        HStack {
                            CustomSwipeText(
                                _text: "GOOD",
                                _size: 40,
                                _padding: 10,
                                _weight: Font.Weight.bold,
                                _color: Color.green,
                                _lineWidth: 6
                            )
                            
                            Spacer()
                            
                            CustomSwipeText(
                                _text: "NOPE",
                                _size: 40,
                                _padding: 10,
                                _weight: Font.Weight.bold,
                                _color: Color.red,
                                _lineWidth: 6
                            )
                        }
                        .padding(.top, geometry.size.height * 0.05)
                        
                        Spacer()
                        
                        HStack {
                            VStack (alignment: .leading) {
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
                            
                            Spacer()
                            
                            Button (action: {
                                
                            }, label: {
                                Image(systemName: "info.circle.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 40, height: 40)
                            })
                            .padding(.trailing, geometry.size.width * 0.03)
                        }
                        .frame(
                            alignment: .leading
                        )
                        .padding(.bottom, geometry.size.height * 0.05)
                    }
                    .frame(
                        width: geometry.size.width * 0.8,
                        height: geometry.size.height
                    )
                }
                .offset(
                    self.numbers.last == num ? translation : .zero
                )
                .rotationEffect(
                    self.numbers.last == num ? .degrees(Double(translation.width / 300 * 20)) : .zero
                    )
                .gesture(
                    DragGesture()
                        .onChanged({value in
                            translation = value.translation
                            print("value.location: ", value.location)
                        })
                        .onEnded({value in
                            if value.startLocation.x - 150 > value.location.x {
                                // 左側にフェードアウト
                                translation = .init(width: -800, height: 0)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute:{
                                    self.numbers.removeLast()
                                    self.translation = .zero
                                })
                            } else if value.startLocation.x + 150 < value.location.x {
                                // 右側にフェードアウト
                                translation = .init(width: 800, height: 0)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute:{
                                    self.numbers.removeLast()
                                    self.translation = .zero
                                })
                            } else {
                                translation = .zero
                            }
                        })
                )
                .animation(.spring(
                    response: 0.3,
                    dampingFraction: 0.7,
                    blendDuration: 2
                ), value: self.translation)
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
            .frame(
                alignment: .leading
            )
    }
}

struct CustomSwipeText: View {
    var _text: String
    var _size: CGFloat
    var _padding: CGFloat
    var _weight: Font.Weight? = Font.Weight.regular
    var _color: Color = Color.white
    var _lineWidth: CGFloat
    
    var body : some View {
        Text(_text)
            .foregroundColor(_color)
            .font(.system(
                size: _size,
                weight: _weight
            ))
            .padding(.all, _padding)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(
                        _color,
                        lineWidth: _lineWidth
                    )
            )
    }
}
