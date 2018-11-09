//
//  BookListViewController.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/10/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {
    @IBOutlet weak var bookListCollectionView: UICollectionView!
    
    var bookList: [Book] = DummyData.createBookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bookListCollectionView.dataSource = self
        self.bookListCollectionView.delegate = self
        
        CellRegisterUtils.cellRegister(nibName: "BookListCollectionViewCell", collectionView: self.bookListCollectionView)
    }

}

extension BookListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookListCollectionViewCell", for: indexPath) as! BookListCollectionViewCell
        
        let book = bookList[indexPath.row]
        cell.ivImage.image = UIImage(named: book.coverPhoto)
        
        return cell
    }
    
}

extension BookListViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  16
        let collectionViewSize = collectionView.frame.size.width - padding
        
        return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "BookDetailsViewController") as! BookDetailsViewController
        myVC.book = bookList[indexPath.row]
        navigationController?.pushViewController(myVC, animated: true)
    }
    
}
