//
//  GenericsCommands.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class GenericsCommands<T>: CommandProtocol {
    
    private var receiver: T
    private var commandsBlock: (T) -> ()
    
    init(paramReceiver: T, paramBlock: @escaping (T) -> ()) {
        self.receiver = paramReceiver
        self.commandsBlock = paramBlock
    }
    
    func execute() {
        self.commandsBlock(self.receiver)
    }
    
}
