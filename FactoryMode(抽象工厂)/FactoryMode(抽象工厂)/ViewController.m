//
//  ViewController.m
//  FactoryMode(抽象工厂)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "ViewController.h"
#import "WXPaymentFactory.h"
#import "ZFBPaymentFactory.h"
#import "PaymentProtocol.h"
#import "PaymentFactoryProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    id<PaymentFactoryProtocol> wxFactory = [[WXPaymentFactory alloc] init];
    id<PaymentProtocol> payment = wxFactory.getSomePayment;
    id object = payment.getPaymentObject;
    
    
   id<PaymentFactoryProtocol> zfbFactory = [[ZFBPaymentFactory alloc] init];
   id<PaymentProtocol> zfbPayment = zfbFactory.getSomePayment;
   id zfbObject = zfbPayment.getPaymentObject;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
