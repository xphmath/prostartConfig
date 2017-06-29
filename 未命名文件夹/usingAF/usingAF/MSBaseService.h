//
//  MSBaseService.h
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSNetManager.h"
@interface MSBaseService : NSObject
- (void)postRequestWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure;
@end
