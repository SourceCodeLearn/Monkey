//
//  UIViewController+YiProgressHUD.m
//  GitHubYi
//
//  Created by coderyi on 15/4/6.
//  Copyright (c) 2015年 www.coderyi.com. All rights reserved.
//

#import "UIViewController+YiProgressHUD.h"
UIAlertView *alertView;
@implementation UIViewController (YiProgressHUD)
- (void)showYiProgressHUD:(NSString *)title  afterDelay:(NSTimeInterval)delay{
    [self showYiProgressHUD:title];
    
    [NSTimer scheduledTimerWithTimeInterval:delay
                                     target:self
                                   selector:@selector(hideYiProgressHUD:)
                                   userInfo:nil
                                    repeats:NO];
    
  
}
- (void)showYiProgressHUD:(NSString *)title{
    alertView = [[UIAlertView alloc] initWithTitle:@""
                                           message:title
                                          delegate:nil
                                 cancelButtonTitle:nil otherButtonTitles:nil, nil];
    
    
    
    [alertView show];
}
- (void)hideYiProgressHUD{
    [self hideYiProgressHUD:nil];

}
- (void)hideYiProgressHUD:(NSTimer*)timer {
    NSLog(@"Dismiss alert view");
    
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}
@end
