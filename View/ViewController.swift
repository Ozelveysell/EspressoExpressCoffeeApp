//
//  ViewController.swift
//  EspressoExpress
//
//  Created by veysel on 26.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
  
    
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
        label2.numberOfLines = 2
        label2.lineBreakMode = .byWordWrapping

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
          imageView.addGestureRecognizer(tapGesture)
          imageView.isUserInteractionEnabled = true // Enable user interaction
      }

      // Function to handle tap gesture
      @objc func imageTapped() {
          // Perform segue to the main page (replace "SegueIdentifier" with your segue identifier)
          performSegue(withIdentifier: "toAnaSayfaVC", sender: self)
      }

}

