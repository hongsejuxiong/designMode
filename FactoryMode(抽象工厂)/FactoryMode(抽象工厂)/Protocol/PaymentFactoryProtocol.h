//
//  PaymentFactoryProtocol.h
//  FactoryMode(抽象工厂)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "PaymentProtocol.h"

@protocol PaymentFactoryProtocol<NSObject>

/** 获取具体相应支付产品*/
- (id<PaymentProtocol>)getSomePayment;

@end
