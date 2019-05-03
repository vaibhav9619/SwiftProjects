//
//  NewModel.swift
//  MVVMpoc
//
//  Created by Vaibhav-VVDN on 18/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class NewModel: NSObject {
    var CarName : String
    let CarModel : String
    let CarPrice : String
    let CarColor : String
    let CarCompany : String
    let image : UIImage
    
    init (CarName : String , CarModel:String , CarPrice:String , CarColor:String , CarCompany:String,image:UIImage)
    {
        self.CarName = CarName
        self.CarModel = CarModel
        self.CarPrice = CarPrice
        self.CarColor = CarColor
        self.CarCompany = CarCompany
        self.image = image
        
    }
}

