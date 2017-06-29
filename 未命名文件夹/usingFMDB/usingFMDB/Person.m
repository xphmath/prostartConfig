//
//  Person.m
//  usingFMDB
//
//  Created by msjf on 2017/6/20.
//  Copyright © 2017年 common. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@,age:%@,sex:%@",self.name,self.age,self.sex];
}
@end
