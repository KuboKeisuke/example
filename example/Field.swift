/*
 やること
 ・9×9のマスの地雷原
 ・地雷の配置
 ・地雷配置のリセット
 ・周辺地雷数のカウント
 */

import Foundation
class MineField{
    //9×9マスの地雷原(変数にはvarを使う)
    private var mineField:[[Int]] =
        [[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]]
    
    //周辺地雷数を数える9×9マス
    private var mineAmount:[[Int]] =
        [[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]
        ,[0,0,0,0,0,0,0,0,0]]
    
    //地雷原に地雷の配置
    func setMineField(){
        for _ in 0...9 {
            var x : Int
            var y : Int
            //被らずにセットできるまでループ
            while true {
                x = Int(arc4random() % 8)
                y = Int(arc4random() % 8)
                if mineField[x][y] != 1 {
                    mineField[x][y] = 1
                    break
                }
            }
        }
    }
    
    //地雷原のゲッター
    func getMineField() -> [[Int]]{
        return mineField
    }
    
    //地雷原のコンソール表示用
    func printMineField(){
        for i in 0...8 {
            print(mineField[i])
        }
        print("\n")
    }
    
    //周辺地雷数9×9マスのセット
    func setMineAmount(){
        for row:Int in 0...8 {
            for column:Int in 0...8{
                //引数にはラベルが必要
                mineAmount[row][column] = countMineAmount(i: row,j: column)
            }
        }
    }
    
    //周辺地雷数を数える
    private func countMineAmount (i:Int,j:Int) -> Int {
        var count : Int = 0
        for x:Int in -1...1 {
            for y:Int in -1...1{
                //範囲外のものは数えない
                if -1 < i+x && i+x < 9 && -1 < j+y && j+y < 9{
                    if mineField[i+x][j+y] == 1 {
                        count += 1
                    }
                }
            }
        }
        //中心が地雷だったものはありえない数にして分かりやすく
        if(mineField[i][j] == 1){
            count = 9
        }
        return count
    }
    
    //地雷原のゲッター
    func getMineAmount() -> [[Int]]{
        return mineAmount
    }
    
    //地雷原のコンソール表示用
    func printMineAmount(){
        for i in 0...8 {
            print(mineAmount[i])
        }
        print("\n")
    }
}
