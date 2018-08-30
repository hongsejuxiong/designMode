//
//  ZFBPaymentFactory.m
//  FactoryMode(抽象工厂)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "ZFBPaymentFactory.h"
#import "ZFBPayment.h"
@implementation ZFBPaymentFactory

- (id<PaymentProtocol>)getSomePayment {
    return [[ZFBPayment alloc] init];
}

@end
