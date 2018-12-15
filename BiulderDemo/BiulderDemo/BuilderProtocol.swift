//
//  BuilderProtocol.swift
//  BiulderDemo
//
//  Created by admin on 2018/9/10.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

protocol BuilderProtocol {
    
    func buildCPU()
    func buildGPU()
    func buildMemory()
    
    func getComputer() -> BuilderProtocol

}
