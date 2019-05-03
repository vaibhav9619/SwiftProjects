//
//  ButtonStyle.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 06/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
class ButtonStyle: UIButton {
    override func awakeFromNib(){
        super.awakeFromNib()
        self.titleLabel?.textColor = UIColor.black
        self.backgroundColor = UIColor.blue
    }
}
