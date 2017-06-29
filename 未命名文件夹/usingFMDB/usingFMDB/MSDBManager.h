//
//  MSDBManager.h
//  usingFMDB
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB/src/fmdb/FMDB.h"

@interface MSDBManager : NSObject
+ (instancetype)manager;
//create
- (BOOL)createTableWithSql:(NSString *)sql;
//update
- (BOOL)updateWithSql:(NSString *)sql;
//select
- (FMResultSet *)selectWithSql:(NSString *)sql;
@end
