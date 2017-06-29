//
//  MSDBServiceManage.m
//  usingFMDB
//
//  Created by msjf on 2017/6/20.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSDBServiceManage.h"

@implementation MSDBServiceManage
+ (instancetype)manager {
    static MSDBServiceManage * _s = nil;
    @synchronized (self) {
        if (_s == nil) {
            _s = [[MSDBServiceManage alloc] init];
        }
    }
    return _s;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _personService = [[MSPersonService alloc] init];
    }
    return self;
}
@end
