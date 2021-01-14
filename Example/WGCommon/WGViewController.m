//
//  WGViewController.m
//  WGCommon
//
//  Created by jsonsnow on 01/05/2021.
//  Copyright (c) 2021 jsonsnow. All rights reserved.
//

#import "WGViewController.h"
#import <WGCommon/WGCommon-Swift.h>
#import <WGCommon/WGCommon.h>
//#import <WGCommon/WGCommon-Swift.h>

@interface WGViewController ()

@end

@implementation WGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [WGAlertActionBtn alloc] initWithTitle:<#(NSString * _Nonnull)#> font:<#(float)#> color:<#(UIColor * _Nullable)#> hideRightLine:<#(BOOL)#> action:<#^(void)action#>
    UIColor *color = [[UIColor alloc] initWithRgba_throws:@"#285B9A" error:nil];
    WGAlertActionBtn *contact = [[WGAlertActionBtn alloc] initWithTitle:@"联系客服" font:17 color:color hideRightLine:NO action:^{
//        [self jumpContactCtr];
    }];
    WGAlertActionBtn *solve = [[WGAlertActionBtn alloc] initWithTitle:@"解决方案" font:17 color:nil hideRightLine:YES action:^{
//        [self jumpSolveCtr];
    }];
    WGAlertPopView *alert = [[WGAlertPopView alloc] initWithTitle:@"登录失败" msg:@"请查看登录失败的解决方案，如有疑问，联系客服咨询"];
    [[[alert addActionBtn:contact] addActionBtn:solve] showTo:self.view];
//    @"xxx" g
//    UIColor *color = [UIColor alloc] 
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
