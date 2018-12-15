//
//  EncryptionProtocol.h
//  Strategy(策略模式)
//
//  Created by admin on 2018/9/8.
//  Copyright © 2018年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EncryptionProtocol <NSObject>

- (NSData *)encryptionString:(NSString *)string;

@end
