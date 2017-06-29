//
//  MSLoginService.m
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSLoginService.h"

@implementation MSLoginService
- (void)loginWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure {
    [self postRequestWithURL:url para:paras success:^(id responseObject) {
        if (success) {
            success(responseObject);
        }
    } Failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}
@end
