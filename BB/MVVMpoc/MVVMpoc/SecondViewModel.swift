//
//  SecondViewModel.swift
//  MVVMpoc
//
//  Created by Vaibhav-VVDN on 18/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class SecondViewModel: NSObject {
    
    let obj1:NewModel
    init(obj1:NewModel)
    {
        self.obj1 = obj1
    }
    var CName1:String
    {
        return obj1.CarName
    }
    var CModel1:String
    {
        return obj1.CarModel
    }
    var CarColor1:String
    {
        return obj1.CarColor
    }
    var CCompany1:String
    {
        return obj1.CarCompany
    }
    var CAge1:String
    {
        return obj1.CarAge
    }
    var image1: UIImage
    {
        return obj1.image
    }

}
