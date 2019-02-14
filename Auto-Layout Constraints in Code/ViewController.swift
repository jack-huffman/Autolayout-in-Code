//
//  ViewController.swift
//  Auto-Layout Constraints in Code
//
//  Created by Jack Huffman on 2/13/19.
//  Copyright © 2019 Jack Huffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // image view
    var imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // constraints
        // ran into errors when defining variables outside of viewDidLoad()
        // fully defined them in one step here
        let topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1, constant: 20)
        let bottomConstraint = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -20)
        let leftConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
        let rightConstraint = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
        
        // setup for imageView
        imageView.image = UIImage(named: "dusseldorf.jpg")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // activate constraints
        view.addConstraints([topConstraint, bottomConstraint, leftConstraint, rightConstraint])
        
    }



}

