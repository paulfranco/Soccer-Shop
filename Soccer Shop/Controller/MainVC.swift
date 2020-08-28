//
//  ViewController.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var featuredProductsCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featuredProductsCollectionView.dataSource = self
        featuredProductsCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.featuredProductsCollectionView {
            return DataService.instance.getfeaturedProducts().count
        }
        return DataService.instance.getCategories().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.featuredProductsCollectionView {
            let featuredProductCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
            let featuredProduct = DataService.instance.getfeaturedProducts()[indexPath.row]
            
            featuredProductCell.updateViews(product: featuredProduct)
            
            return featuredProductCell
        } else {
            let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
            let categoryItem = DataService.instance.getCategories()[indexPath.row]
            
            categoryCell.updateViews(category: categoryItem)
            return categoryCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "goToProductsVC", sender:  category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productsVC.initializeProducts(category: sender as! Category)
        }
    }

}


