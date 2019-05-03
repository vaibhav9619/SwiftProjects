//
//  new1.swift
//  netgear1
//
//  Created by Vaibhav-VVDN on 25/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class new1: UIBezierPath {
     func  draw(rect:CGRect)
    {
        var aPath=UIBezierPath()
        aPath.move(to: CGPoint(x:10,y:10))
        aPath.addLine(to: CGPoint(x:0,y:50))
        aPath.close()
        UIColor.red.set()
        aPath.stroke()
        aPath.fill()
    }
    

}
