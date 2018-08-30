//
//  WXPaymentFactory.m
//  FactoryMode(抽象工厂)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "WXPaymentFactory.h"
#import "PaymentProtocol.h"
#import "WXPayment.h"
@implementation WXPaymentFactory


- (id<PaymentProtocol>)getSomePayment{
    
    /** 返回所创建的对应支付产品对象*/
    return [[WXPayment alloc] init];
}


@end
