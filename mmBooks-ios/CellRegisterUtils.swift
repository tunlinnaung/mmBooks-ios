//
//  CellRegisterUtils.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation
import UIKit

class CellRegisterUtils {
    
    static func cellRegister(nibName: String, collectionView: UICollectionView) {
        let nib = UINib(nibName: nibName, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: nibName)
    }
    
}
