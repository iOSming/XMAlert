//
//  ViewController.m
//  XMAlert
//
//  Created by ming on 2017/3/8.
//  Copyright © 2017年 ming. All rights reserved.
//

#import "ViewController.h"
#import "XMAlert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        [XMAlert showFromVc:self withTexts:@{XMAlertTitle:@"Notice",XMAlertMessage:@"This alert is nice!"}
                   sureHandle:^{
                       [XMAlert showFromVc:self withTexts:@{XMAlertTitle:@"Notice",XMAlertMessage:@"You clicked the 'sure'!"} sureHandle:^{
                       }];
                   }];
        return;
    }
    if (indexPath.row == 1) {
        
        [XMAlert showSCFromVc:self withTexts:@{XMAlertTitle:@"Notice",XMAlertMessage:@"This alert is nice!\nYou can click 'Sure' or 'Cancel'"}
                   sureHandle:^{
                       NSLog(@"clicked sure btn");
                       [XMAlert showFromVc:self withTexts:@{XMAlertTitle:@"Notice",XMAlertMessage:@"You clicked the 'sure'!"} sureHandle:^{
                       }];
                   }
                 cancelHandle:^{
                     NSLog(@"clicked cancel btn");
                     [XMAlert showFromVc:self withTexts:@{XMAlertTitle:@"Notice",XMAlertMessage:@"You clicked the 'cancel'!"} sureHandle:^{
                     }];
                 }];
    }
    
}

- (void)showUIAlerController
{
    
    
}
@end
