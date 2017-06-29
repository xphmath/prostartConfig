//
//  TestModel.h
//  usingYYModel
//
//  Created by msjf on 2017/6/29.
//  Copyright © 2017年 common. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface hhModel : NSObject
@property (nonatomic) NSString *a;
@property (nonatomic) NSString *b;
@property (nonatomic) NSString *c;
@end

@interface TestModel : NSObject
@property (nonatomic) NSString *code;
@property (nonatomic) NSString *des;
@property (nonatomic) NSString *price;
@property (nonatomic) NSString *num;
@property (nonatomic) NSArray *extra;
@property (nonatomic) hhModel *sub;
@end
