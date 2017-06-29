//
//  MSPersonService.h
//  usingFMDB
//
//  Created by msjf on 2017/6/20.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface MSPersonService : NSObject
- (BOOL)insertPerson:(Person *)p;
- (BOOL)updatePerson:(Person *)p;
- (BOOL)deletePerson:(Person *)p;
- (Person *)selectPerson:(NSString *)name;
- (NSArray *)selectAll;
@end
