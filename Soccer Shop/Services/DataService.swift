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
    
    private let categories = [
        Category(title: "Jerseys", imageName: "jerseys.png"),
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "Sweaters", imageName: "sweaters.png"),
        Category(title: "Hats", imageName: "hats.png"),
        Category(title: "Jackets", imageName: "jackets.png"),
        Category(title: "Pants", imageName: "pants.png"),
        Category(title: "Shorts", imageName: "shorts.png")
    ]
    
    private let shorts = [
        Product(productTitle: "Home Shorts", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Shorts", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Shorts", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Shorts", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Shorts", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Shorts", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let pants = [
        Product(productTitle: "Home Pants", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Pants", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Pants", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Pants", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Pants", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Pants", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let jackets = [
        Product(productTitle: "Home Jacket", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Jacket", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Jacket", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Jacket", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Jacket", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Jacket", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let jerseys = [
        Product(productTitle: "Home Jersey", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Jersey", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Jersey", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Jersey", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Jersey", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Jersey", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let shirts = [
        Product(productTitle: "Home Shirt", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Shirt", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Shirt", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Shirt", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Shirt", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Shirt", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let sweaters = [
        Product(productTitle: "Home Sweater", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Sweater", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Sweater", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Sweater", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Sweater", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Sweater", productImage: "jersey4", productPrice: 14.99)
    ]
    
    private let hats = [
        Product(productTitle: "Home Hat", productImage: "jersey6", productPrice: 19.99),
        Product(productTitle: "Away Hat", productImage: "jersey5", productPrice: 18.99),
        Product(productTitle: "Green Hat", productImage: "jersey3", productPrice: 17.99),
        Product(productTitle: "Black Hat", productImage: "jersey1", productPrice: 16.99),
        Product(productTitle: "Blue Hat", productImage: "jersey2", productPrice: 15.99),
        Product(productTitle: "White Hat", productImage: "jersey4", productPrice: 14.99)
    ]
    
    func getfeaturedProducts() -> [Product] {
        return featuredProducts
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SWEATERS":
            return getSweaters()
        case "SHIRTS":
            return getShirts()
        case "JERSEYS":
            return getJerseys()
        case "JACKETS":
            return getJackets()
        case "PANTS":
            return getPants()
        case "SHORTS":
            return getShorts()
        default:
            return getJerseys()
        }
    }
    
    func getShorts() -> [Product] {
        return shorts
    }
    
    func getPants() -> [Product] {
        return pants
    }
    
    func getJackets() -> [Product] {
        return jackets
    }
    
    func getJerseys() -> [Product] {
        return jerseys
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getSweaters() -> [Product] {
        return sweaters
    }
    
}
