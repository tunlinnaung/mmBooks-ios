//
//  AdsCollectionViewCell.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class AdsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ivAdsBook: UIImageView!
    
    var ads: Advertisement? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        createAdvertisement()
    }
    
    func createAdvertisement() {
        ads = DummyData.createAdvertisement()
    }

}

extension AdsCollectionViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsCollectionViewCell", for: indexPath) as! AdsCollectionViewCell
        
        cell.ivAdsBook.image = UIImage(named: ads!.image!)
        
        return cell
    }
    
}

extension AdsCollectionViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
