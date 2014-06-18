//
//  ViewController.m
//  YSWindowTouchPointObserverExample
//
//  Created by Yu Sugawara on 2014/06/18.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"
#import "YSWindowTouchPointObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)navigationBarLeftButtonDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

- (IBAction)navigationBarRightButtonDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

- (IBAction)toolBarLeftButtonDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

- (IBAction)toolBarRightButtonDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

- (IBAction)buttonOnViewDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

- (IBAction)buttonOnSubViewDidPush:(id)sender
{
    NSLog(@"%s", __func__);
    NSLog(@"%@", [YSWindowTouchPointObserver sharedObserver]);
}

@end
