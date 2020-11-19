//
//  CollectionView.swift
//  FriendshipTest
//
//  Created by 1111 on 12.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import SwiftUI

// MARK: - Collection
struct Collection: View {
    
    var category = productCategory
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {


            UIGrid(columns: 2, list: category) { category in
                ProductCard(category: category)
                    
            }
        }
        
    }
}

// MARK: - Universal collection

struct UIGrid<Content: View, T: Hashable>: View {

private let columns: Int
private var list: [[T]] = []
private let content: (T) -> Content
init(columns: Int, list: [T], @ViewBuilder content:@escaping (T) -> Content) {
    self.columns = columns
    self.content = content
    self.setupList(list)
}

private mutating func setupList(_ list: [T]) {
    var column = 0
    var columnIndex = 0

    for object in list {
        if columnIndex < self.columns {
            if columnIndex == 0 {
                self.list.insert([object], at: column)
                columnIndex += 1
            }else {
                self.list[column].append(object)
                columnIndex += 1
            }
        }else {
            column += 1
            self.list.insert([object], at: column)
            columnIndex = 1
        }
    }
}

var body: some View {
    VStack {
        ForEach(0 ..< self.list.count, id: \.self) { i  in
            HStack {
                ForEach(self.list[i], id: \.self) { object in

                    self.content(object)
                        .frame(width: UIScreen.main.bounds.size.width/CGFloat(self.columns) - 25)
                        .padding(.horizontal, 7)
                }
            } .padding(.horizontal, 9)
        }

    }
}

}
