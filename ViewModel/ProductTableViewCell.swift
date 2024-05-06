//
//  ProductTableViewCell.swift
//  EspressoExpress
//
//  Created by veysel on 27.04.2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {


    @IBOutlet weak var imageview2: UIImageView!
    
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
