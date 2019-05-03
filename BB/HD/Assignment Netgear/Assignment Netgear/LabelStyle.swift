//
//  LabelStyle.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 23/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import Foundation
import UIKit

class MyLabel : UILabel{

    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = UIColor.black
        self.adjustsFontSizeToFitWidth = true
        self.backgroundColor = UIColor.white
    }
}


