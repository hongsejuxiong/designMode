//
//  Product.swift
//  BiulderDemo
//
//  Created by admin on 2018/9/10.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class Product {
    
    var cpu: String?
    var gpu: String?
    var memory: String?
    var display: String?

    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
