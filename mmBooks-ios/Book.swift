//
//  Book.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

class Book {
    
    var title: String? = ""
    var releaseDate: String? = ""
    var coverPhoto: String? = ""
    
    init(title: String, releaseDate: String, coverPhoto: String) {
        self.title = title
        self.releaseDate = releaseDate
        self.coverPhoto = coverPhoto
    }
    
}
