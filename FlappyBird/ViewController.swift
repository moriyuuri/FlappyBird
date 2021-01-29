//
//  ViewController.swift
//  FlappyBird
//
//  Created by 森ゆうり on 2021/01/19.
//  Copyright © 2021 yuuri.mori. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SKViewに型を変換する
        let skView = self.view as! SKView

        // FPSを表示する
        skView.showsFPS = true

        // ノードの数を表示する
        skView.showsNodeCount = true

        // ビューと同じサイズでシーンを作成する
        //let scene = SKScene(size:skView.frame.size)
        // ↓ GameSceneクラスに変更
        let scene = GameScene(size:skView.frame.size)

        // ビューにシーンを表示する
        skView.presentScene(scene)
    }
    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---


}

