//
//  TableViewCell.swift
//  ContactApplication
//
//  Created by Vaibhav-VVDN on 12/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var names: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
