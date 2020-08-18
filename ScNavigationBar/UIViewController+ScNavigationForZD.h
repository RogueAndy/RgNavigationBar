//
//  UIViewController+ScNavigationForZD.h
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/9/24.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSInteger zd_nav_global_leftbtn = 93401;

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (ScNavigationForZD)

/**
 透明导航栏，白色字体s
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setTranslucentWithWhiteTitle:(NSString *)title;

/**
 白色导航栏，黑色字体
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setDefaultsTitle:(NSString *)title;

/**
 白色导航栏带有默认返回按钮，黑色气体
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setDefaultsTitleWithBack:(NSString *)title;

/**
 底部没有分割线的导航栏
 
 @param title 标题
 */
- (UIView *)sc_setDefaultsTitleWithBackNoBottom:(NSString *)title;

/**
 设置只有返回按钮的导航栏
 
 @return 导航栏对象
 */
- (UIView *)sc_setOnlyBackBtn;


/**
 添加导航栏底部的bottom_line
 */
-(void)sc_ZD_addLine;

/**
 智达内防止右滑返回影响导航栏
 */
- (void)sc_zd_setTitle:(NSString *)title leftButton:(UIView * _Nullable)zd_leftbtn right:(UIView * _Nullable)zd_rightbtn;


-(UIView *)sc_mm_backItemBtn;

/**
 企业反欺诈专用的导航栏
 
 @param title 标题
 */
- (UIView *)sc_setTranslucentWithWhiteTitleAndBack:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
