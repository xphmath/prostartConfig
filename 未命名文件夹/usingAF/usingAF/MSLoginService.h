//
//  MSLoginService.h
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSBaseService.h"

@interface MSLoginService : MSBaseService
- (void)loginWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure;
@end
