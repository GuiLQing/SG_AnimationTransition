//
//  SGViewController.m
//  SG_AnimationTransition
//
//  Created by GuiLQing on 07/05/2019.
//  Copyright (c) 2019 GuiLQing. All rights reserved.
//

#import "SGViewController.h"
#import "SG_AnimationTransition.h"
#import "CommonMagicMoveAnimationViewController.h"
#import "CommonSmoothViewController.h"
#import "CommonTikTokCommentViewController.h"
#import "CommonMaskViewController.h"

@interface SGViewController ()

@property (nonatomic,strong) NSMutableArray * animationStyleList;

@end

@implementation SGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"DemoList";
    self.animationStyleList = [@[@"神奇移动转场",@"平滑转场",@"高仿抖音的评论效果",@"mask转场动画"] mutableCopy];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.animationStyleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:nil];
    cell.detailTextLabel.text = self.animationStyleList[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            CommonMagicMoveAnimationViewController * magicMoveVC = [[CommonMagicMoveAnimationViewController alloc] init];
            [self.navigationController ss_pushViewController:magicMoveVC type:KAnimationTransitionTypeNone];
            break;
        }
        case 1:{
            CommonSmoothViewController * smoothVC = [[CommonSmoothViewController alloc] init];
            UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:smoothVC];
            [self.navigationController ss_presentVC:naviVC type:KAnimationTransitionTypeSmooth];
            break;
        }
        case 2:{
            CommonTikTokCommentViewController * commentVC = [[CommonTikTokCommentViewController alloc] init];
            [self.navigationController ss_pushViewController:commentVC type:KAnimationTransitionTypeNone];
            break;
        }
        case 3:{
            CommonMaskViewController * maskVC = [[CommonMaskViewController alloc] init];
            [self.navigationController ss_pushViewController:maskVC type:KAnimationTransitionTypeNone];
            break;
        }
        default:
            break;
    }
}

- (UIView *)SS_AnimationTransitionTargetView{
    return [UIView new];
}

@end
