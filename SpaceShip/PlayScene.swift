//
//  PlayScene.swift
//  SpaceShip
//
//  Created by Anil on 07/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import Foundation
import SpriteKit

class playScene : SKScene {
    
    var background = SKSpriteNode(imageNamed: "bgPlayScene")
    
    override func didMoveToView(view: SKView) {
        
//        addBG()
        makeBackground()
        addSpaceShip()
    }
    
    func addBG() {
        
        let bg = SKSpriteNode(imageNamed: "bgPlayScene")
        bg.position = CGPointMake(self.size.width/2, self.size.height/2)
        bg.size = view!.bounds.size
        addChild(bg)
    }
    
    func makeBackground() {
        
        let backgroundTexture = SKTexture(imageNamed: "bgPlayScene")
        
        let shiftBackground = SKAction.moveToY(-backgroundTexture.size().height, duration: 50)
        let replaceBackground = SKAction.moveToY(backgroundTexture.size().height, duration: 0)
        let movingAndReplacingBackground = SKAction.repeatActionForever(SKAction.sequence([shiftBackground,replaceBackground]))
        
        for var i:CGFloat = 0; i<3; i++ {
            //defining background; giving it height and moving width
            background=SKSpriteNode(texture:backgroundTexture)
            background.position = CGPoint(x: CGRectGetMidX(self.frame), y: backgroundTexture.size().height/2 + (backgroundTexture.size().width * 1))
            background.size.width = self.frame.width
            background.runAction(movingAndReplacingBackground)
            
            self.addChild(background)
        }
    }
    
    func addSpaceShip() {
        
        let spaceShip = SKSpriteNode(imageNamed: "spaceship")
        spaceShip.position = CGPointMake(self.size.width/2, spaceShip.size.height / 2)
//        bg.size = view!.bounds.size
        addChild(spaceShip)
    }
}
