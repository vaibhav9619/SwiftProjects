//
//  FirstViewModel.swift
//  MVVMpoc
//
//  Created by Vaibhav-VVDN on 18/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class FirstViewModel: NSObject{
    var obj:NewModel
    init(obj:NewModel)
    {
        self.obj = obj
    }
    var CName:String
    {
//        obj.CarName = "Vaibhav"
        return obj.CarName
    }
    var CModel:String
    {
        return obj.CarModel
    }
    var CColor:String
    {
        return obj.CarColor
    }
    var CCompany:String
    {
        return obj.CarCompany
    }
    var CPrice:String
    {
        return obj.CarPrice
    }
    var image: UIImage
    {
        return obj.image
    }
}


