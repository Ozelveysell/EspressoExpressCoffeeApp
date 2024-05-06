//
//  EndViewController.swift
//  EspressoExpress
//
//  Created by veysel on 30.04.2024.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var explanationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        explanationLabel.numberOfLines = 6
        explanationLabel.lineBreakMode = .byWordWrapping


    }
    

    
}
