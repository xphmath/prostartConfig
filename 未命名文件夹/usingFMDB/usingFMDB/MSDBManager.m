//
//  MSDBManager.m
//  usingFMDB
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSDBManager.h"
@interface MSDBManager()
@property (nonatomic) FMDatabase *db;
@end
@implementation MSDBManager
+ (instancetype)manager {
    static MSDBManager *m = nil;
    @synchronized (self) {
        if (m == nil) {
            m = [[MSDBManager alloc] init];
        }
    }
    return m;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"fm.db"];
        _db = [FMDatabase databaseWithPath:path];
        BOOL ret = [_db open];
        if (ret) {
            NSLog(@"数据库打开成功");
          
          
        }
    }
    return self;
}
- (BOOL)createTableWithSql:(NSString *)sql {
    BOOL ret =  [_db executeUpdate:sql];
    return ret;
}
- (BOOL)updateWithSql:(NSString *)sql {
    BOOL ret = [_db executeUpdate:sql];
    return ret;
}
- (FMResultSet *)selectWithSql:(NSString *)sql {
     return [_db executeQuery:sql];
}

@end
