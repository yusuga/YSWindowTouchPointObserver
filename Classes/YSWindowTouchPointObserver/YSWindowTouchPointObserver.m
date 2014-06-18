//
//  YSWindowTouchPointObserver.m
//  YSWindowTouchPointObserverExample
//
//  Created by Yu Sugawara on 2014/06/18.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "YSWindowTouchPointObserver.h"

@interface UIWindow_TouchPointObserver : UIWindow

- (instancetype)initWithWindow:(UIWindow*)window;

@end

@implementation UIWindow_TouchPointObserver

- (instancetype)initWithWindow:(UIWindow*)window
{
    if (self = [super initWithFrame:window.bounds]) {
        self.rootViewController = window.rootViewController;
        [self makeKeyAndVisible];
    }
    return self;
}

- (void)sendEvent:(UIEvent *)event
{
    UITouch *touch = [[event touchesForWindow:self] anyObject];
    YSWindowTouchPointObserver *observer = [YSWindowTouchPointObserver sharedObserver];
    observer.touchPhase = touch.phase;
    observer.locationInWindow = [touch locationInView:self];
    
    [super sendEvent:event];
}

@end

@implementation YSWindowTouchPointObserver

+ (UIWindow*)windowAddedTouchPointObserverWithWindow:(UIWindow*)window;
{
    return [[UIWindow_TouchPointObserver alloc] initWithWindow:window];
}

+ (instancetype)sharedObserver
{
    static id __sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedInstance =  [[self alloc] init];
    });
    return __sharedInstance;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %p> touchPhase: %@; locationInWindow: %@", NSStringFromClass([self class]), self, [[self class] stringFromUITouchPhase:self.touchPhase], NSStringFromCGPoint(self.locationInWindow)];
}

#pragma mark - utitlity

+ (NSString*)stringFromUITouchPhase:(UITouchPhase)phase
{
    switch (phase) {
        case UITouchPhaseBegan:
            return @"UITouchPhaseBegan";
        case UITouchPhaseMoved:
            return @"UITouchPhaseMoved";
        case UITouchPhaseStationary:
            return @"UITouchPhaseStationary";
        case UITouchPhaseEnded:
            return @"UITouchPhaseEnded";
        case UITouchPhaseCancelled:
            return @"UITouchPhaseCancelled";
        default:
            return [NSString stringWithFormat:@"Undefined phase: %zd", phase];
    }
}

@end
