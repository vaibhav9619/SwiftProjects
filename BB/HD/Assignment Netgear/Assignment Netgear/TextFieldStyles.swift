//
//  TextFile.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 06/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import Foundation
import UIKit


class TextStyle : UITextField{
    override func awakeFromNib(){
        
        super.awakeFromNib()
        super.textColor = UIColor.darkGray
        super.backgroundColor = UIColor.white
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
