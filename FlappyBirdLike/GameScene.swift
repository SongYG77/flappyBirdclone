//
//  GameScene.swift
//  FlappyBirdLike
//
//  Created by 송윤근 on 2021/12/20.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let land = SKSpriteNode(imageNamed: "land")
        land.position = CGPoint(x: self.size.width / 2, y : 50)
        land.zPosition = 3
        self.addChild(land)
        //객체 이미지 불러와 자리 지정후 addchild로 화면에 배치
        
        let sky = SKSpriteNode(imageNamed: "sky")
        sky.position = CGPoint(x: self.size.width / 2, y : 100)
        sky.zPosition = 1
        self.addChild(sky)
        
        let bird = SKSpriteNode(imageNamed: "bird")
        bird.position = CGPoint(x: self.size.width / 2, y : 200)
        bird.zPosition = 2
        self.addChild(bird)
        
        let ceiling = SKSpriteNode(imageNamed: "ceiling")
        ceiling.position = CGPoint(x: self.size.width / 2, y : 300)
        ceiling.zPosition = 3
        self.addChild(ceiling)
    
        
    
        let pipeup = SKSpriteNode(imageNamed: "pipe")
        pipeup.position = CGPoint(x : self.size.width / 2 , y:100)
        pipeup.zPosition = 2
        self.addChild(pipeup)
        
        let pipedown = SKSpriteNode(imageNamed: "pipe")
        pipedown.position = CGPoint(x : self.size.width/2 , y : self.size.height)
        pipedown.zPosition = 2
        pipedown.xScale = -1
        pipedown.zRotation = .pi
    
        self.addChild(pipedown)
        
        
    }
}
