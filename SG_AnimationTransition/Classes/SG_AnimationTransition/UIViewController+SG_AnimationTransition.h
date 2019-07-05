//
//  UIViewController+AnimationTransition.h
//  AnimationTransitionDemo
//
//  Created by 宋澎 on 2018/7/13.
//  Copyright © 2018年 宋澎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SG_AnimationTransitionConfig.h"

@class SG_AnimationInteractiveTransition;

@interface UIViewController (SG_AnimationTransition)

@property (nonatomic,strong) SG_AnimationInteractiveTransition * animationTransitionDelegate;

//返回转场的目标视图,某些转场中必须实现这个方法
- (UIView *)SG_AnimationTransitionTargetView;
- (void)sg_presentVC:(UIViewController *)viewController type:(KSS_AnimationTransitionType)type;

@end
