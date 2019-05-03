//
//  ButtonStyle2.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 06/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class ButtonStyle2 : UIButton{
    override func awakeFromNib(){
         super.awakeFromNib()
            self.backgroundColor = UIColor.white
            self.titleLabel?.textColor = UIColor.black
        }
}
