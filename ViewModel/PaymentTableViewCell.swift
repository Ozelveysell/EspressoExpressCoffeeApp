//
//  PaymentTableViewCell.swift
//  EspressoExpress
//
//  Created by veysel on 29.04.2024.
//

import UIKit


class PaymentTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageview2: UIImageView!
    
  
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var pieceLabel: UILabel!
    
    @IBOutlet weak var minusImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
