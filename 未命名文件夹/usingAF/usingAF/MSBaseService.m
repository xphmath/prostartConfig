//
//  MSBaseService.m
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSBaseService.h"

@implementation MSBaseService

- (void)postRequestWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure {
    [[MSNetManager sharedManager] postRequestWithURL:url para:paras success:^(id responseObject) {
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
