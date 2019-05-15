//
//  ViewController.swift
//  Answer3
//
//  Created by Paul Tang on 2019-05-14.
//  Copyright © 2019 Paul Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var imageTableView: UITableView!
    
    // List of image
    var displayImageList: [UIImage] = []
    
    // Selected image
    var selectedImage: UIImage? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        imageTableView.dataSource = self
        imageTableView.delegate = self
        
        // Add images to displayImageList
        let image1 = UIImage(named: "image1") ?? UIImage()
        let image2 = UIImage(named: "image2") ?? UIImage()
        let image3 = UIImage(named: "image3") ?? UIImage()
        let image4 = UIImage(named: "image4") ?? UIImage()
        displayImageList += [image1,image2,image4,image3]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let image = displayImageList[indexPath.row]
        
        selectedImage = image
        performSegue(withIdentifier: "ViewImage", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayImageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let image = displayImageList[indexPath.row]
        
        if let cell: ImageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as? ImageTableViewCell {
            
            cell.displayImage.image = image
            
            return cell
            
        } else {
            assertionFailure("Unable to dequeue cell")
            return UITableViewCell()
        }
    }
    
     // MARK: - Navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? VIewImageViewController {
            destinationViewController.selectedImage = selectedImage
        }
     }
}

