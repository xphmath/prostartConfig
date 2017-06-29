//
//  MSCache.h
//  内存缓存
//
//  Created by msjf on 2017/6/27.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSCache : NSObject
+(instancetype)sharedInstance;
- (void)setObject:(id)obj forKey:(NSString *)key;
- (void)removeObjForKey:(NSString *)key;
- (id)objectForKey:(NSString *)key;
- (void)removeAllObjs;
@end
