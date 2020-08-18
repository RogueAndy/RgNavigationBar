//
//  UIViewController+ScNavigationBar.h
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScNavigation.h"

NS_ASSUME_NONNULL_BEGIN
#pragma mark - 给 ViewController 对象生成一个已经在的导航栏属性，不用再初始化
/** 给 ViewController 对象生成一个已经在的导航栏属性，不用再初始化 */
@interface UIViewController (ScNavigationBar)

@property (nonatomic, strong, readonly) ScNavigation *sc_navigationBar;

- (void)setTitle:(NSString *)title leftButton:(UIView * _Nullable)zd_leftbtn right:(UIView * _Nullable)zd_rightbtn;

@end

NS_ASSUME_NONNULL_END
