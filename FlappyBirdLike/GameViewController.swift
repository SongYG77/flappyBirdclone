//
//  GameViewController.swift
//  FlappyBirdLike
//
//  Created by 송윤근 on 2021/12/20.
//

import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene =  GameScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            
            view.presentScene(scene)
            view.ignoresSiblingOrder = true
            //화면에 표시되는 노드의 순서를 컴파일러에게 맡긴다.
            
            view.showsFPS = true
            //화면에 프레임 숫자 보여줌
            view.showsNodeCount = true
            //화면에 노드의 개수 표시.
            
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }// 화면 돌아가기

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
