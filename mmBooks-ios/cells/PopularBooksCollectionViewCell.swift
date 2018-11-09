//
//  PopularBooksCollectionViewCell.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class PopularBooksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblPopularBookTitle: UILabel!
    
    @IBOutlet weak var btnMorePopularBooks: UIButton!
    
    var popularBookList: [Book] = []
    
    @IBOutlet weak var popularBooksCollectionView: UICollectionView!
    
    weak var delegate: MyDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.popularBooksCollectionView.dataSource = self
        self.popularBooksCollectionView.delegate = self
        
        cellRegister()
        createPopularBooks()
    }
    
    func cellRegister() {
        CellRegisterUtils.cellRegister(nibName: "BookImageCollectionViewCell", collectionView: self.popularBooksCollectionView)
    }
    
    func createPopularBooks() {
        self.popularBookList = DummyData.createBookInfo()
    }

}

extension PopularBooksCollectionViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return popularBookList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookImageCollectionViewCell", for: indexPath) as! BookImageCollectionViewCell
        
        let popularBook = popularBookList[indexPath.row]
        cell.ivBookImage.image = UIImage(named: popularBook.coverPhoto)
        
        return cell
    }
    
}

extension PopularBooksCollectionViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.onTapImage(index: indexPath.row)
    }
    
}
