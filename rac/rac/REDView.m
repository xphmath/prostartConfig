//
//  REDView.m
//  rac
//
//  Created by msjf on 2017/7/6.
//  Copyright © 2017年 common. All rights reserved.
//

#import "REDView.h"

@implementation REDView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        _btn = [UIButton new];
        _btn.frame = CGRectMake(150, 50, 80, 80);
        _btn.layer.masksToBounds = YES;
        [_btn setTitle:@"btn" forState:UIControlStateNormal];
        
        [_btn addTarget:self action:@selector(btnClickaa:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btn];
    }
    return self;
}

- (void)btnClickaa:(id)sender {
    NSLog(@"13");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
