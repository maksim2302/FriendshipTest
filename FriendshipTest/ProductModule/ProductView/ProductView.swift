//
//  ProductView.swift
//  FriendshipTest
//
//  Created by 1111 on 12.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    
    @Environment(\.presentationMode) var presentation
    var product: Product
    
    var body: some View {
        
            VStack {
                //MARK: - Navigation Buttons
                HStack {
                          Button(action: {
                            self.presentation.wrappedValue.dismiss()
                          }) {
                              Image("chevron-left")
                                  .frame(width: 24, height: 24)
                                  .foregroundColor(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                          }
                          .frame(width: 40, height: 40)
                          Spacer()
                          Button(action: { }) {
                              Image("cart")
                                  .frame(width: 24, height: 24)
                                  .foregroundColor(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                          }
                          .frame(width: 40, height: 40)
                      }
                .padding(.horizontal, 10)
             //MARK: - Image
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 76)
                    .cornerRadius(12)
                
                HStack {
                    //MARK: - Product: Name, weight, country
                    VStack {
                        HStack {
                            Text(product.name)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }
                        HStack {
                            Text("\(product.country), \(product.weight)")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }
                    }
                    //MARK: - Price, discount
                    VStack {
                        Text(product.newPrice)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            .multilineTextAlignment(.trailing)
                        
                        Text(product.oldPrice)
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                            .multilineTextAlignment(.trailing)
                        
                        Text(product.discount)
                            .frame(width: 44, height: 22.71)
                            .font(.system(size: 13, weight: .semibold))
                            .background(Color(#colorLiteral(red: 1, green: 0.8, blue: 0, alpha: 1)))
                            .cornerRadius(32)
                            .padding(8)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 67)
                //MARK: - Red button
                Button(action: { }) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(#colorLiteral(red: 0.929411768913269, green: 0.20000000298023224, blue: 0.18039216101169586, alpha: 1)))
                            .frame(height: 48)
                            .padding(.horizontal, 16)
                        
                        HStack {
                            Text("Добавить в список")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Image("plus")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                        .padding(.horizontal, 81)
                        .padding(.vertical, 23)
                    }
                }
                //MARK: - "Информация"
                HStack {
                    Text("Информация")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Spacer()
                }
                .padding()
                
                VStack(spacing: 8) {
                    HStack {
                        Text("Цена по карте ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Цена без карты ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Обычная цена ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Производитель ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Бренд ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Упаковка ")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.68, green: 0.68, blue: 0.7, alpha: 1)))
                        Spacer()
                        Text("500 ")
                            .font(.system(size: 11, weight: .medium))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                }
                Spacer()
                //MARK: - TabBar
                TabBar()
            }
               //MARK: - NavigationView
                .navigationBarTitle("") //this must be empty
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)

    }
}

