//
//  ShareViewController.m
//  hhh
//
//  Created by msjf on 2017/6/27.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ShareViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (BOOL)isContentValid {
    // Do validation of contentText and/or NSExtensionContext attachments here
    return YES;
}

- (void)didSelectPost {
    // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
    // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
    [self.extensionContext.inputItems enumerateObjectsUsingBlock:^(NSExtensionItem  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj.attachments  enumerateObjectsUsingBlock:^(NSItemProvider  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj hasItemConformingToTypeIdentifier:@"public.url"]) {
                [obj loadItemForTypeIdentifier:@"public.url" options:nil completionHandler:^(id<NSSecureCoding>  _Nullable item, NSError * _Null_unspecified error) {
                    NSLog(@"%@",item);
                }];
            }
        }];
    }];
    [self.extensionContext completeRequestReturningItems:@[] completionHandler:nil];
}

- (NSArray *)configurationItems {
    // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
    return @[];
}

@end
