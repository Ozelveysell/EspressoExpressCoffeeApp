//
//  SeceneklerCollectionViewCell.swift
//  EspressoExpress
//
//  Created by veysel on 26.04.2024.
//

import UIKit

class SeceneklerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var secenekImageView: UIImageView!
    
    @IBOutlet weak var secenekLabel: UILabel!
    

    func setup(with secenek: Secenek) {
        
        secenekImageView.image = secenek.image
        secenekLabel.text = secenek.title
        
    }
}
