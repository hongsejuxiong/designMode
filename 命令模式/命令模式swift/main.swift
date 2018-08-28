//
//  main.swift
//  命令模式swift
//
//  Created by admin on 2018/8/28.
//  Copyright © 2018年 admin. All rights reserved.
//

import Foundation

//print("Hello, World!")

let re = Receiver()

let manager = InvokeManager(paramReceiver: re)

manager.debugPrint()
manager.releasePrint()
manager.undo()
manager.undoAll()

/**********************************  复合命令  *********************************/

//let wrapperManager = WrapperInvokeManager(paramReceiver: re)
//wrapperManager.debugPrint()
//wrapperManager.releasePrint()
//wrapperManager.undo()
//wrapperManager.undoAll()


/**********************************  泛型命令  *********************************/


//let genericsManager = GenericsInvokeManager(paramReceiver: re)
//
//genericsManager.debugPrint()
//genericsManager.releasePrint()
//genericsManager.undo()
//genericsManager.undoAll()

/**********************************  闭包命令  *********************************/

//let blockManager = BlockInvokeManager(paramReceiver: re)
//
//blockManager.debugPrint()
//blockManager.releasePrint()
//blockManager.undo()
//blockManager.undoAll()








