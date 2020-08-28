//
//  Product.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import Foundation
struct Product {
    private(set) public var productTitle: String
    private(set) public var productImage: String
    private(set) public var productPrice: Double
    
    init(productTitle: String, productImage: String, productPrice: Double) {
        self.productTitle = productTitle
        self.productImage = productImage
        self.productPrice = productPrice
    }
}
