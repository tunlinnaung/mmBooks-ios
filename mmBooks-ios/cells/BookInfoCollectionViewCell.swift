//
//  BookInfoCollectionViewCell.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class BookInfoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ivBookInfo: UIImageView!
    @IBOutlet weak var lblBookInfoTitle: UILabel!
    @IBOutlet weak var lblBookInfoReleaseDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
