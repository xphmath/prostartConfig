//
//  MSDBServiceManage.h
//  usingFMDB
//
//  Created by msjf on 2017/6/20.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSPersonService.h"
@interface MSDBServiceManage : NSObject
@property (nonatomic) MSPersonService *personService;
+ (instancetype)manager;
@end
