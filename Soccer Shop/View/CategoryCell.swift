//
//  CategoryCell.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryName.text = category.title
    }
}
