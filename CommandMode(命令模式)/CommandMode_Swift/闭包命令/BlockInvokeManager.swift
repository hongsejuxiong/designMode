//
//  BlockInvokeManager.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class BlockInvokeManager {
    typealias CommandBlock = (Receiver) -> ()
    private var receiver: Receiver
    private var commands = [CommandBlock]()
    
    init(paramReceiver: Receiver) {
        self.receiver = paramReceiver
    }
    
    func debugPrint() {
        addMethodCommands(method: Receiver.debugFunc)
        self.receiver.debugFunc()
    }
    
    func releasePrint() {
        addMethodCommands(method: Receiver.releaseFunc)
        self.receiver.releaseFunc()
    }
    
    func addMethodCommands(method: @escaping (Receiver) -> ()->()) {

        self.commands.append { (returnReceiver) in
            method(returnReceiver)()
        }
        
        
    }
    
    
    func undo() {
        print("撤销一步")
        if self.commands.count > 0 {
//            self.commands.removeLast().execute()
            
            let command = self.commands.removeLast()
            command(self.receiver)
        }
    }
    
    
    func undoAll() {
        print("撤销所有")

        for command in self.commands {
            command(self.receiver)
        }
        
        self.commands.removeAll()
        
    }

}
