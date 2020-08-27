//
//  Cell.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.productImage)
        productTitle.text = product.productTitle
        productPrice.text = String(product.productPrice)
    }
}
