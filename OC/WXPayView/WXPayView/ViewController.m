//
//  ViewController.m
//  WXPayView
//
//  Created by apple on 16/1/6.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "WXPayView.h"


@interface ViewController ()

@end

@implementation ViewController


- (IBAction)pay{
    
    WXPayView *view = [[WXPayView alloc] initWithMoney:188.88 cardMessage:@"使用中国银行储蓄卡(0333)支付." completion:^(NSString *password) {
        
        NSLog(@"输入的密码是%@",password); // 密码输入完成回调
        // doSomething....
        
        [view hidden];
    }];
    
    __weak WXPayView *weakView = view;
    view.exitBtnClicked = ^{ // 点击了退出按钮
        NSLog(@"点击了退出按钮");
        [weakView hidden];
    };
    
    view.switchCardBtnClicked = ^{ // 更换银行卡
        NSLog(@"更换银行卡");
        [weakView hidden];
    };
    
//    view.places = 5;
    
    [view show];
}





@end
