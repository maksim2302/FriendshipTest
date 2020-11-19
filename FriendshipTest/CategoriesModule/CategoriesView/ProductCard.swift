//
//  ProductCard.swift
//  FriendshipTest
//
//  Created by 1111 on 11.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI

struct ProductCard: View {
    
    var category: CategoryProduct
    
    var body: some View {
        
        NavigationLink(destination: ProductView(product: category.product)) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: (UIScreen.main.bounds.width - 20) / 2, height: UIScreen.main.bounds.height / 3)
                    .foregroundColor(.white)
                
                VStack {
                    ZStack{
                        //MARK: - Product: Image
                        Image(category.product.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal, 24)
                            .padding(.top, 24)
                        
                        HStack {
                            //MARK: - Product: Discount
                            VStack{
                                Text(category.product.discount)
                                    .frame(width: 44, height: 22.71)
                                    .font(.system(size: 13, weight: .semibold))
                                    .background(Color(#colorLiteral(red: 1, green: 0.8, blue: 0, alpha: 1)))
                                    .cornerRadius(32)
                                    .padding(8)
                                
                                Spacer()
                            }
                            .padding(.top, 8)
                            Spacer()
                        }
                    }
                    //MARK: - Product: Name, Country, Weight
                    VStack{
                        HStack {
                            Text(category.product.name)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.horizontal, 8)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }
                        HStack {
                            Text("\(category.product.country), \(category.product.weight)")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 8)
                            
                            Spacer()
                        }
                    }
                    Spacer()
                    HStack {
                        //MARK: - Product Prices
                        VStack {
                            Text(category.product.newPrice)
                                .font(.system(size: 14, weight: .semibold))
                            Text(category.product.oldPrice)
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)))
                        }
                        .padding(.vertical, 8)
                        
                        Spacer()
                        //MARK: - Button "+"
                        Button(action: { }) {
                            ZStack {
                                Ellipse()
                                    .fill(Color(#colorLiteral(red: 0.8980392217636108, green: 0.8980392217636108, blue: 0.9176470637321472, alpha: 1)))
                                    .frame(width: 32, height: 32)
                                Text("+")
                                    .font(.system(size: 20, weight: .semibold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.7803921569, green: 0.7803921569, blue: 0.8, alpha: 1)))
                            }
                        }
                        .padding(.vertical, 11)
                    }
                    .padding(.horizontal, 8)
                }
            }
        } .buttonStyle(PlainButtonStyle())
    }
    
}

