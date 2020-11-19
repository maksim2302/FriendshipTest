//
//  SwiftUIView.swift
//  FriendshipTest
//
//  Created by 1111 on 11.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI


struct TabBar: View {
    
    @State var index = 1
    var body: some View {
        
        ZStack {
            //MARK: - Background
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.bottom)
                .frame(height: 60)
                .shadow(color: Color(#colorLiteral(red: 0.09803921729326248, green: 0.1568627506494522, blue: 0.18431372940540314, alpha: 0.3199999928474426)), radius:16, x:0, y:1)
            //MARK: - Buttons
            HStack(alignment: .center) {
                Button(action: { self.index = 0 }) {
                    if index == 0 {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.929411768913269, green: 0.20000000298023224, blue: 0.18039216101169586, alpha: 1)))
                                .frame(width: 44, height: 44)
                            Image("flame")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                    } else {
                        VStack {
                            Image("flame")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            Text("Главная")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                Spacer(minLength: 0)
                
                Button(action: { self.index = 1 }) {
                    if index == 1 {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                                .frame(width: 44, height: 44)
                            Image("catalog")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                        
                        
                    } else {
                        VStack {
                            Image("catalog")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            Text("Каталог")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                Spacer(minLength: 0)
                
                Button(action: { self.index = 2 }) {
                    if index == 2 {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.929411768913269, green: 0.20000000298023224, blue: 0.18039216101169586, alpha: 1)))
                                .frame(width: 44, height: 44)
                            Image("browser")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                    } else {
                        VStack {
                            Image("browser")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            Text("Карта")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                Spacer(minLength: 0)
                
                Button(action: { self.index = 3 }) {
                    if index == 3 {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.929411768913269, green: 0.20000000298023224, blue: 0.18039216101169586, alpha: 1)))
                                .frame(width: 44, height: 44)
                            Image("cart")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                    } else {
                        VStack {
                            Image("cart")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            Text("Корзина")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                Spacer(minLength: 0)
                
                Button(action: { self.index = 4 }) {
                    if index == 4 {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.929411768913269, green: 0.20000000298023224, blue: 0.18039216101169586, alpha: 1)))
                                .frame(width: 44, height: 44)
                            Image("user")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                    } else {
                        VStack {
                            Image("user")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            Text("Профиль")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
