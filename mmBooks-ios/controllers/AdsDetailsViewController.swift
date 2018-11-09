//
//  AdsDetailsViewController.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/9/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class AdsDetailsViewController: UIViewController {
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var ads: Advertisement? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivImage.image = UIImage(named: ads!.image!)
        lblTitle.text = ads?.title
        lblDescription.text = ads?.description
    }

}
