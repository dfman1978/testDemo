//
//  CustomPushAnimation.m
//  testDemo
//
//  Created by yanminli on 2016/12/5.
//  Copyright © 2016年 s3graphics. All rights reserved.
//

#import "CustomPushAnimation.h"

@implementation CustomPushAnimation 

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 3.0;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController    *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController    *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    toViewController.view.transform = CGAffineTransformMakeTranslation(320, 568);
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        
        fromViewController.view.transform = CGAffineTransformMakeTranslation(-320, -568);
        
        toViewController.view.transform = CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        fromViewController.view.transform = CGAffineTransformIdentity;
        
        // 声明过渡结束时调用 completeTransition: 这个方法
        
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        
    }];
    
}

@end
