
//
//  ContreteBuilder.swift
//  BiulderDemo
//
//  Created by admin on 2018/9/10.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class ContreteBuilder: BuilderProtocol {
    
    var product = Product()
//    var product: Product
    
    init() {
        self.product = Product()
    }
    
    func buildCPU() {
        product.cpu = "intel"
    }
    
    func buildGPU() {
        product.gpu = "GTX"

    }
    
    func buildMemory() {
        product.memory = "金士顿"

    }
    
    func getComputer() -> BuilderProtocol {
        return self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



