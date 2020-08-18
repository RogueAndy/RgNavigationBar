//
//  ScNavigation.h
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScNavigation : UIView

/**
 标题 label
 */
@property (nonatomic, strong, readonly) UILabel *title_label;

/**
 一个背景图片，层级为 1
 */
@property (nonatomic, strong, readonly) UIImageView *bg_image;

/**
 返回按钮，层级 > 1
 */
@property (nonatomic, strong, readonly) UIButton *back_btn;

/**
 分享按钮，层级 > 1
 */
@property (nonatomic, strong, readonly) UIView *right_view;

/**
 底部分割线
 */
@property (nonatomic, strong, readonly) CAShapeLayer *bottom_line;

/**
 是否是使用的默认的 back_btn
 */
@property (nonatomic, assign, readonly) BOOL isDefaultsBackBtn;

@end

NS_ASSUME_NONNULL_END
