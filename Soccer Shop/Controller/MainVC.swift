//
//  ViewController.swift
//  Soccer Shop
//
//  Created by Paul Franco on 8/27/20.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var featuredProductsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featuredProductsCollectionView.dataSource = self
        featuredProductsCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.featuredProductsCollectionView {
            return DataService.instance.getfeaturedProducts().count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.featuredProductsCollectionView {
            let featuredProductCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
            let featuredProduct = DataService.instance.getfeaturedProducts()[indexPath.row]
            
            featuredProductCell.updateViews(product: featuredProduct)
            
            return featuredProductCell
        } else {
            return ProductCell()
        }
    }

}


