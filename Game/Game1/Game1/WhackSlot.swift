//
//  WhackSlot.swift
//  Game1
//
//  Created by Vaibhav-VVDN on 02/05/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
import SpriteKit
class WhackSlot: SKNode {
    var charNode: SKSpriteNode!
    var isVisible = false
    var isHit = false
    
    func configure(at position: CGPoint)
    {
        self.position = position
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        let crop = SKCropNode()
        crop.position = CGPoint(x: 0, y: 15)
        crop.zPosition = 1
        crop.maskNode = SKSpriteNode(imageNamed: "whackMask")
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        crop.addChild(charNode)
        addChild(crop)

    }
    func show(hideTime:Double)
    {
        if isVisible
        {
            return
        }
        charNode.xScale = 1
        charNode.yScale = 1
        charNode.run(SKAction.moveBy(x: 0, y: 80, duration: 0.05))
        isVisible = true
        isHit = false
        if Int.random(in: 0...2) == 0
        {
            charNode.texture = SKTexture(imageNamed: "penguinGood")
            charNode.name = "charFriend"
        }
        else
        {
            charNode.texture = SKTexture(imageNamed: "penguinEvil")
            charNode.name = "charEnemy"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + (hideTime * 3.5)) { [weak self] in
            self?.hide()
        }
    }
    func hide()
    {
        if !isVisible {
            return
        }
        charNode.run(SKAction.moveBy(x: 0, y: -80, duration: 0.05))
        isVisible = false
    }
    func hit()
    {
        isHit = true
        let delay =  SKAction.wait(forDuration: 0.25)
        let hide  = SKAction.moveBy(x: 0, y: -80, duration: 0.5)
        let notVisible =  SKAction.run{[weak self] in self?.isVisible = false}
        let sequence =  SKAction.sequence([delay , hide , notVisible])
        charNode.run(sequence)
        
    }
}
