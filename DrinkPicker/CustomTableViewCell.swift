//
//  CustomTableViewCell.swift
//  DrinkPicker
//
//  Created by Casey on 2/25/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var drinkName: UILabel!
    
    @IBOutlet weak var drinkPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
