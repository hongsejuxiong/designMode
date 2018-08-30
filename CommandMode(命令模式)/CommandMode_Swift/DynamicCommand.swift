//
//  DynamicCommand.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class DynamicCommand: CommandProtocol {
    
    private var receiver: Receiver
    private var commandBlock: (Receiver) -> ()
    
    init(paramReceiver: Receiver, paramBlock: @escaping (Receiver) -> ()) {
        
        self.commandBlock = paramBlock
        self.receiver = paramReceiver
    }
    
    func execute() {
        
        self.commandBlock(self.receiver)
    }
    
    class func sharedCommand(paramReciever: Receiver, paramBlock: @escaping (Receiver) -> ()) -> CommandProtocol {
        
        return DynamicCommand(paramReceiver: paramReciever, paramBlock: paramBlock)
    }
}

