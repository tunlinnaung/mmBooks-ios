//
//  ViewController.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var bookInfoList: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainCollectionView.dataSource = self
        self.mainCollectionView.delegate = self
        
        cellRegister()
        createDummyBookInfo()
    }

    func cellRegister() {
        CellRegisterUtils.cellRegister(nibName: "AdsCollectionViewCell", collectionView: self.mainCollectionView)
        
        CellRegisterUtils.cellRegister(nibName: "PopularBooksCollectionViewCell", collectionView: self.mainCollectionView)
        
        CellRegisterUtils.cellRegister(nibName: "BookInfoCollectionViewCell", collectionView: self.mainCollectionView)
    }
    
    func createDummyBookInfo() {
        bookInfoList = DummyData.createBookInfo()
    }

}

extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 || section == 1 {
            return 1
        }
        return bookInfoList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsCollectionViewCell", for: indexPath) as! AdsCollectionViewCell
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularBooksCollectionViewCell", for: indexPath) as! PopularBooksCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookInfoCollectionViewCell", for: indexPath) as! BookInfoCollectionViewCell
            
            let bookInfo = bookInfoList[indexPath.row]
            cell.ivBookInfo.image = UIImage(named: bookInfo.coverPhoto!)
            cell.lblBookInfoTitle.text = bookInfo.title
            cell.lblBookInfoReleaseDate.text = bookInfo.releaseDate
            
            return cell
        }
    }
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 200)
        } else if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 220)
        } else {
            return CGSize(width: self.view.frame.width, height: 220)
        }
    }
    
}

