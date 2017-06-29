//
//  MSNetManager.h
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
typedef void(^SuccessBlock)(id responseObject);
typedef void(^FailureBlock)(NSError *error);
@interface MSNetManager : NSObject




+ (instancetype)sharedManager;
- (void)postRequestWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure;
@end
