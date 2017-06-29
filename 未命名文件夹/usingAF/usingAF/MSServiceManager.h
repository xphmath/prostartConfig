//
//  MSServiceManager.h
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSLoginService.h"
@interface MSServiceManager : NSObject
@property (nonatomic) MSLoginService *loginService;
+(instancetype)manager;
@end
