//
//  MSServiceManager.m
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSServiceManager.h"

@implementation MSServiceManager
+(instancetype)manager {
    static MSServiceManager *s = nil;
    @synchronized (self) {
        if (s == nil) {
            s = [[MSServiceManager alloc] init];
        }
    }
    return s;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _loginService = [MSLoginService new];
    }
    return self;
}
@end
