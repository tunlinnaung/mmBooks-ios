//
//  Book.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

class Book {
    
    var title: String
    var author: String
    var releaseDate: String
    var coverPhoto: String
    var description: String
    
    init(title: String, author: String, releaseDate: String, coverPhoto: String, description: String) {
        self.title = title
        self.author = author
        self.releaseDate = releaseDate
        self.coverPhoto = coverPhoto
        self.description = description
    }
    
}
