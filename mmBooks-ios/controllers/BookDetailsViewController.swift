//
//  BookDetailsViewController.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {

    
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var book: Book? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivImage.image = UIImage(named: book!.coverPhoto)
        lblTitle.text = book?.title
        lblAuthor.text = book?.author
        lblDate.text = book?.releaseDate
        lblDescription.text = book?.description
    }

}
