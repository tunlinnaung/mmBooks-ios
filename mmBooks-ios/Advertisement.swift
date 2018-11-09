//
//  Advertisement.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

class Advertisement {
    
    var image: String? = ""
    var title: String? = ""
    var description: String? = ""
    
    init(image: String, title: String, description: String) {
        self.image = image
        self.title = title
        self.description = description
    }
    
}
