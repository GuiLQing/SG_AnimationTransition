//
//  AnimationEffects.h
//  AnimationTransitionDemo
//
//  Created by 宋澎 on 2018/7/16.
//  Copyright © 2018年 宋澎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+SG_AnimationTransition.h"
#import "SG_AnimationTransitionConfig.h"

@interface SG_AnimationEffects : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic,assign) BOOL isBack;
@property (nonatomic,strong) NSNumber * testNumber;

- (instancetype)initWithIsBack:(BOOL)isBack;
- (NSInteger)test;

@end
