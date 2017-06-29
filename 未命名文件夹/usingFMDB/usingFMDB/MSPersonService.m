//
//  MSPersonService.m
//  usingFMDB
//
//  Created by msjf on 2017/6/20.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSPersonService.h"
#import "MSDBManager.h"
@implementation MSPersonService
- (instancetype)init
{
    self = [super init];
    if (self) {
       NSString *sql =   @"create table if not  exists MSPersonService ( name varchar,  age varchar, sex varchar)";
      BOOL ret = [[MSDBManager manager] createTableWithSql:sql];
        if (ret) {
            NSLog(@" success");
        }
    }
    return self;
}
- (BOOL)insertPerson:(Person *)p {
    NSString *sql = [NSString stringWithFormat:@"insert into MSPersonService values('%@','%@','%@');",p.name,p.age,p.sex];
  BOOL ret = [[MSDBManager manager] updateWithSql:sql];
    if (ret) {
        NSLog(@"insert success");
    }
    return ret;
}
- (BOOL)updatePerson:(Person *)p {
    NSString *sql = [NSString stringWithFormat:@"update  MSPersonService set age = 'yt' where name = '%@';",p.name];
    BOOL ret = [[MSDBManager manager] updateWithSql:sql];
    if (ret) {
        NSLog(@"update success");
    }
    return ret;
}
- (Person *)selectPerson:(NSString *)name {
    NSString *sql = [NSString stringWithFormat:@"select * from MSPersonService where name = '%@';",name];
   FMResultSet *result = [[MSDBManager manager] selectWithSql:sql];
    NSMutableArray *ret = [NSMutableArray new];
    while ([result next]) {
        Person *p = [Person new];
       p.name = [result stringForColumn:@"name"];
       p.age = [result stringForColumn:@"age"];
       p.sex = [result stringForColumn:@"sex"];
        [ret addObject:p];
    }
    if (ret.count > 0) {
        return [ret objectAtIndex:0];
    }
    return nil;
}
- (BOOL)deletePerson:(Person *)p {
    NSString *sql = [NSString stringWithFormat:@"delete  from MSPersonService  where name = '%@';",p.name];
    BOOL ret = [[MSDBManager manager] updateWithSql:sql];
    if (ret) {
        NSLog(@"delete success");
    }
    return ret;

}

- (NSArray *)selectAll {
     NSString *sql = [NSString stringWithFormat:@"select * from MSPersonService;"];
    FMResultSet *result = [[MSDBManager manager] selectWithSql:sql];
    NSMutableArray *ret = [NSMutableArray new];
    while ([result next]) {
        Person *p = [Person new];
        p.name = [result stringForColumn:@"name"];
        p.age = [result stringForColumn:@"age"];
        p.sex = [result stringForColumn:@"sex"];
        [ret addObject:p];
    }
    return [ret copy];
}

@end
