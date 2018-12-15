//
//  ViewController.swift
//  Biulder(构建者模式)
//
//  Created by admin on 2018/9/8.
//  Copyright © 2018年 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
//        let alertController = ManagerController(param: )
        
        ManagerController.Biulder(self)
        .setTitle("苏维埃万岁")
        .setMessage("乌拉")
        .setConfirmText("确定")
        .setCancelText("取消")
        .setCancelBlock { (action) in
            print("点击取消")
        }
        
        .setConfirmBlock { (action) in
            print("点击确定")
        }.biuld().show()
    }


}

