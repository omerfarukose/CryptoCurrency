//
//  CryptoCell.swift
//  CryptoCurrency
//
//  Created by Ömer Faruk KÖSE on 26.10.2021.
//

import UIKit

class CryptoCell: UITableViewCell {

    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
