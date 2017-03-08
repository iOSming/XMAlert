//
//  XMAlertController.m
//  XMAlert
//
//  Created by ming on 2017/3/8.
//  Copyright © 2017年 ming. All rights reserved.
//

#import "XMAlert.h"

@interface XMAlert ()

@end

@implementation XMAlert

+(void)showFromVc:(UIViewController *)fromVc withTexts:(NSDictionary *)texts sureHandle:(void (^)())sureHandle
{
    NSString * title = texts[XMAlertTitle];
    NSString * message = texts[XMAlertMessage];
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:title?:@""
                                                                    message:message?:@""
                                                             preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * okaction = [UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        sureHandle();
    }];
    [alert addAction:okaction];
    [fromVc  presentViewController:alert animated:YES completion:NULL];
}

+(void)showSCFromVc:(UIViewController *)fromVc withTexts:(NSDictionary *)texts sureHandle:(void (^)())okHandle cancelHandle:(void (^)())cancelHandle
{
    NSString * title = texts[XMAlertTitle];
    NSString * message = texts[XMAlertMessage];
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:title?:@""
                                                                    message:message?:@""
                                                             preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * okaction = [UIAlertAction actionWithTitle:@"Sure" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        okHandle();
    }];
    
    UIAlertAction * cancelaction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        cancelHandle();
    }];
    
    
    [alert addAction:okaction];
    [alert addAction:cancelaction];
    [fromVc  presentViewController:alert animated:YES completion:NULL];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
