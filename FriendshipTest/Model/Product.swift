//
//  Product.swift
//  FriendshipTest
//
//  Created by 1111 on 11.11.2020.
//  Copyright © 2020 1111. All rights reserved.
//

import Foundation

struct CategoryProduct: Hashable {
    var name: String
    var product: Product
}

struct Product: Hashable {
    var image: String
    var name: String
    var country: String
    var weight: String
    var discount: String
    var oldPrice: String
    var newPrice: String
}


var productCategory: [CategoryProduct] = [
    CategoryProduct(name: "Овощи", product: Product(image: "cucumber", name: "Огурцы короткоплодные колючие, весовые", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "108.39₽")),
    CategoryProduct(name: "Овощи", product: Product(image: "melon", name: "Дыня Колхозница вес.", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "108.39₽")),
    CategoryProduct(name: "Овощи", product: Product(image: "potatoes", name: "Картофель белый мытый, новый урожай", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "154.99₽")),
    
    CategoryProduct(name: "Овощи", product: Product(image: "cucumber", name: "Огурцы короткоплодные колючие, весовые", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "108.39₽")),
    CategoryProduct(name: "Овощи", product: Product(image: "melon", name: "Дыня Колхозница вес.", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "108.39₽")),
    CategoryProduct(name: "Овощи", product: Product(image: "potatoes", name: "Картофель белый мытый, новый урожай", country: "Россия", weight: "220 гр", discount: "30 %", oldPrice: "172.99₽", newPrice: "154.99₽"))
]




