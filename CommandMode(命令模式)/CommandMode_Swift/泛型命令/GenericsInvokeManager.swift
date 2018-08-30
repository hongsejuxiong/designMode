//
//  GenericsInvokeManager.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class GenericsInvokeManager {
    
    private var receiver: Receiver
    private var commands = [CommandProtocol]()
    
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
        
        self.commands.append(GenericsCommands<Receiver>(paramReceiver: self.receiver, paramBlock: { (returnReceiver) in
            method(returnReceiver)()
        }))
        
    }
    
    
    func undo() {
        print("撤销一步")
        if self.commands.count > 0 {
            self.commands.removeLast().execute()
        }
    }
    
    
    func undoAll() {
        
        print("撤销所有")
        let wrapCommands = WrapperCommands(commands: self.commands)
        wrapCommands.execute()
        self.commands.removeAll()
        
    }
    
}


