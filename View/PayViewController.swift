//
//  PayViewController.swift
//  EspressoExpress
//
//  Created by veysel on 30.04.2024.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var kartNoTextField: UITextField!
    
    
    @IBOutlet weak var ayYilTextField: UITextField!
    
    
    @IBOutlet weak var guvenlikKoduTextField: UITextField!
    
    
    
    
    
    
    var rememberMeChecked = false // Kullanıcının seçimini saklamak için bir değişken

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func payButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toEndVC", sender: nil)
    }
    

}
