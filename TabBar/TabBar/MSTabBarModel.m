//
//  MSTabBarModel.m
//  TabBar
//
//  Created by msjf on 2017/6/22.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSTabBarModel.h"

@implementation MSTabBarModel
- (instancetype)initWithViewControllerName:(NSString *)vcName itemName:(NSString *)itemName normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage {
    if (self == [super init]) {
        _vcName = vcName;
        _itemName = itemName;
        _normalImage = normalImage;
        _selectedImage = selectedImage;
    }
    return self;
}
- (UIViewController *)createVC {
    if (_vcName == nil) {
        return nil;
    }
    UIViewController *vc = [NSClassFromString(_vcName) new];
    vc.tabBarItem.title = _itemName;
    vc.tabBarItem.selectedImage = [UIImage imageNamed:_selectedImage];
    vc.tabBarItem.image = [UIImage imageNamed:_normalImage];
    return vc;
}

@end
