//
//  InvokeManager.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class InvokeManager {
    
    private var receiver: Receiver
    private var commands = [CommandProtocol]()
    
    
    init(paramReceiver: Receiver) {
        self.receiver = paramReceiver
    }
    
    
    func debugPrint() {
        /** 方法是一种特殊的闭包, 将方法作为闭包传递,不是类方法调用*/
        addMethodCommands(method: Receiver.debugFunc)
        self.receiver.debugFunc()
    }
    
    
    func releasePrint() {
        addMethodCommands(method: Receiver.releaseFunc)
        self.receiver.releaseFunc()
    }
    
    func addMethodCommands(method: @escaping (Receiver) -> ()->() ) {
        
        self.commands.append(DynamicCommand(paramReceiver: self.receiver, paramBlock: { (returnReceiver) in
            method(returnReceiver)()
        }))
        
    }
    
    
    //撤销上一步
    func undo() {
        print("撤销一步")

        if self.commands.count > 0 {
            self.commands.removeLast().execute()
        }
    }
    
    //撤销所有
    func undoAll() {
        print("撤销所有")

        for item in self.commands {
            item.execute()
        }
        
        self.commands.removeAll()
    }
    
}
