//
//  UIView+CornerRaids.m
//  Factory
//
//  Created by msjf on 2017/6/23.
//  Copyright © 2017年 common. All rights reserved.
//

#import "UIView+CornerRaids.h"

@implementation UIView (CornerRaids)
- (void)corner {
    self.layer.cornerRadius = self.bounds.size.width / 2;
    self.layer.masksToBounds = YES;
}
- (void)borber {
//    self.layer.cornerRadius = 5;
    self.layer.borderColor = [UIColor redColor].CGColor;
    self.layer.borderWidth = 1;
//    self.layer.masksToBounds = YES;
}

@end
