import SpriteKit

class GameScene:SKScene{
    
    private var greetingLabel: SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // ラベルを取得
        self.greetingLabel = self.childNode(withName: "//greetingLabel") as? SKLabelNode
        if let label = self.greetingLabel {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
    }
}
