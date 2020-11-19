//
//  ContentView.swift
//  FriendshipTest
//
//  Created by 1111 on 11.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.9529411765, green: 0.9568627451, blue: 0.9803921569, alpha: 1)).edgesIgnoringSafeArea(.top)
                VStack {
                    TopView()
                    Collection()
                }
                VStack {
                    Spacer()
                    TabBar()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
