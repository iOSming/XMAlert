//
//  XMAlertController.h
//  XMAlert
//
//  Created by ming on 2017/3/8.
//  Copyright © 2017年 ming. All rights reserved.
//

#import <UIKit/UIKit.h>
const static NSString * XMAlertTitle = @"title";
const static NSString * XMAlertMessage = @"message";

@interface XMAlert : NSObject

+(void)showFromVc:(UIViewController *)fromVc
          withTexts:(NSDictionary *)texts
         sureHandle:(void(^)())sureHandle;

+(void)showSCFromVc:(UIViewController *)fromVc
          withTexts:(NSDictionary *)texts
         sureHandle:(void(^)())okHandle
       cancelHandle:(void(^)())cancelHandle;

@end
