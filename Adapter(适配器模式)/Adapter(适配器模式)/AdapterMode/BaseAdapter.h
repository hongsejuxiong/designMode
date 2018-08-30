//
//  BaseAdapter.h
//  Adapter(适配器模式)
//
//  Created by admin on 2018/8/30.
//  Copyright © 2018年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseAdapter : NSObject<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataArray;

@end
