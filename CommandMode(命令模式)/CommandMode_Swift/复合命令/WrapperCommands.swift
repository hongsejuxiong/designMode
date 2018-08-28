//
//  WrapperCommands.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

class WrapperCommands: CommandProtocol {
    private var commands: [CommandProtocol]
    init(commands: [CommandProtocol]) {
        
        self.commands = commands
    }
    
    func execute() {
        
        for commands in self.commands {
            commands.execute()
        }
    }
}
