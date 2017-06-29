//
//  MSCache.m
//  内存缓存
//
//  Created by msjf on 2017/6/27.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSCache.h"
@interface MSCache()
@property (nonatomic) NSCache *cache;
@end
@implementation MSCache
+(instancetype)sharedInstance {
    static MSCache *_s = nil;
    @synchronized (self) {
        if (_s == nil) {
            _s = [MSCache new];
        }
    }
    return _s;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _cache = [NSCache new];
    }
    return self;
}
- (void)setObject:(id)obj forKey:(NSString *)key {
    [_cache setObject:obj forKey:key];
}
- (void)removeObjForKey:(NSString *)key {
    [_cache removeObjectForKey:key];
}

- (id)objectForKey:(NSString *)key {
  return  [_cache objectForKey:key];
}
- (void)removeAllObjs {
    [_cache removeAllObjects];
}

@end
