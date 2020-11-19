//
//  TopButtons.swift
//  FriendshipTest
//
//  Created by 1111 on 11.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Spacer()
                // MARK: - Navigation title
                Text(productCategory[0].name)
                    .font(.system(size: 17, weight: .semibold))
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    // MARK: - Navigation buttons
                    Button(action: { }) {
                        Image("search")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                    }
                    .frame(width: 40, height: 40)
                    
                    Button(action: { }) {
                        Image("cart")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                    }
                    .frame(width: 40, height: 40)
                }
                .padding(.horizontal, 8)
            }
            HStack {
                // MARK: - Top buttons
                Button(action: { }) {
                    Image("LeftTopButton")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color(#colorLiteral(red: 0.9294117689, green: 0.200000003, blue: 0.180392161, alpha: 1)))
                }
                Spacer()
                Button(action: { }) {
                    Text("Сначала дорогие")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.2, blue: 0.18, alpha: 1)))
                        .multilineTextAlignment(.trailing)
                }
            }
            .padding(.horizontal)
        }
    }
}
