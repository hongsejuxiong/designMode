//
//  PaymentProtocol.h
//  FactoryMode(抽象工厂)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PaymentProtocol<NSObject>

/** 获取支付对象*/
- (instancetype)getPaymentObject;

/**
 其他创建支付方式所需相应参数等
 - (instancetype)getPaymentMoney;
 - (instancetype)getPaymentUserName;
 */


@end
