//
//  ViewController.swift
//  example
//
//  Created by KuboKeisuke on 2016/11/20.
//  Copyright © 2016年 KuboKeisuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ログにハローワールド
        print("Hello World!")
        
        //ラベルを追加してハローワールド、
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = "Hello World!"
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

