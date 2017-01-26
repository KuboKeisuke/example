/*
 やること
 ・地雷の配置
 ・フラッグ設置、マス開け
 ・画面表示
*/

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //ゲームシーンの表示
        if let skView = self.view as! SKView? {
            if let gameScene = SKScene(fileNamed: "GameScene") {
                gameScene.scaleMode = .aspectFill
                skView.presentScene(gameScene)
            }
            //fpsとノードの表示
            skView.showsFPS = true
            skView.showsNodeCount = true
        }
        
        //ログにハローワールド
        print("Hello World!")
        
        //ラベルを追加してハローワールド、
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = "Hello World!"
        self.view.addSubview(label)
        
        //マス宣言
        let field = MineField()
        //ランダム配置
        field.setMineField()
        //コンソール用表示
        field.printMineField()
        
        field.setMineAmount()
        
        field.printMineAmount()
    }
    
    //ステータスバーの非表示
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

