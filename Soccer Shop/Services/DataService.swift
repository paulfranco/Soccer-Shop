//
//  DataService.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let featuredProducts = [
        Product(productTitle: "Home Jersey", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Jersey", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Jersey", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Jersey", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Jersey", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Jersey", productImage: "jersey4", productPrice: 14.99)
    ]
    
    func getfeaturedProducts() -> [Product] {
        return featuredProducts
    }
}
