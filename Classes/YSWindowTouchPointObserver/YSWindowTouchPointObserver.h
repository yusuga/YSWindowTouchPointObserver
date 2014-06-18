//
//  YSWindowTouchPointObserver.h
//  YSWindowTouchPointObserverExample
//
//  Created by Yu Sugawara on 2014/06/18.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSWindowTouchPointObserver : NSObject

+ (UIWindow*)windowAddedTouchPointObserverWithWindow:(UIWindow*)window;

+ (instancetype)sharedObserver;

@property (nonatomic) UITouchPhase touchPhase;
@property (nonatomic) CGPoint locationInWindow;

@end
