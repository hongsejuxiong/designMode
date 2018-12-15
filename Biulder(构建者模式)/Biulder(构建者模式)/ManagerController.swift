//
//  ManagerController.swift
//  Biulder(构建者模式)
//
//  Created by admin on 2018/9/8.
//  Copyright © 2018年 admin. All rights reserved.
//

import UIKit

class ManagerController: NSObject {
    
    var param: BiulderParam
    
    init(param: BiulderParam) {
        self.param = param
    }
    
    func show() {
        
        let alert = UIAlertController(title: param.title!, message: param.message!, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: param.confirmText, style: .default, handler: param.confirmBlock))
        
        alert.addAction(UIAlertAction(title: param.cancelText, style: .default, handler: param.cancelBlock))
            

    }
    
    

    class BiulderParam: NSObject {
        
         var title: String?
         var message: String?
         var confirmText: String?
         var cancelText: String?
         var confirmBlock: ((UIAlertAction) -> ())?
         var cancelBlock: ((UIAlertAction) -> ())?
         var controller: UIViewController
        
        init (_ controller: UIViewController) {
            
            self.controller = controller
        }
        
    }

        

    class Biulder: NSObject {
        
        var param: BiulderParam
        
        init (_ controller: UIViewController) {
            self.param = BiulderParam(controller)
        }
        
        func setTitle(_ title: String) -> Biulder {
            param.title = title
            return self
        }
        
        
        func setMessage(_ message: String) -> Biulder {
            param.message = message
            return self
        }
        
        func setConfirmText(_ confirmText: String) -> Biulder {
            param.confirmText = confirmText
            return self
        }
        
        
        func setCancelText(_ cancelText: String) -> Biulder {
            param.cancelText = cancelText
            return self
        }
        
        func setConfirmBlock(_ confirmBlock: ((UIAlertAction) -> ())?) -> Biulder {
            param.confirmBlock = confirmBlock
            return self
        }

        func setCancelBlock(_ cancelBlock:  ((UIAlertAction) -> ())?) -> Biulder {
            param.cancelBlock = cancelBlock
            return self
        }

        
        func biuld() -> ManagerController {
            return ManagerController(param: param)
        }
        
    
    }
    
}
