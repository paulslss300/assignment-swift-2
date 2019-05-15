//
//  VIewImageViewController.swift
//  Answer3
//
//  Created by Paul Tang on 2019-05-14.
//  Copyright © 2019 Paul Tang. All rights reserved.
//

import UIKit

class VIewImageViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    // Selected image
    var selectedImage: UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedImage = selectedImage {
            displayImage.image = selectedImage
        }
    }
    
}
