//
//  MSNetManager.m
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSNetManager.h"
@interface MSNetManager()
@property (nonatomic) AFHTTPSessionManager *manager;
@end
@implementation MSNetManager
+ (instancetype)sharedManager {
    static MSNetManager *_manager = nil;
    @synchronized (self) {
        if (_manager == nil) {
            _manager = [[MSNetManager alloc] init];
        }
    }
    return _manager;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _manager = [AFHTTPSessionManager manager];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
        _manager.requestSerializer.timeoutInterval = 8;
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    }
    return self;
}
- (void)startService{
}
- (void)postRequestWithURL:(NSString *)url para:(NSDictionary *)paras success:(SuccessBlock)success Failure:(FailureBlock)failure {
    [_manager POST:url parameters:paras success:^(NSURLSessionDataTask *task, id responseObject) {
        if(success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}
@end
