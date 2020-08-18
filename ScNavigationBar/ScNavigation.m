//
//  ScNavigation.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ScNavigation.h"
#import "ScNavigationVar.h"

@interface ScNavigation()

/**
 标题 label
 */
@property (nonatomic, strong, readwrite) UILabel *title_label;

/**
 一个背景图片，层级为 1
 */
@property (nonatomic, strong, readwrite) UIImageView *bg_image;

/**
 返回按钮，层级 > 1
 */
@property (nonatomic, strong, readwrite) UIButton *back_btn;

/**
 分享按钮，层级 > 1
 */
@property (nonatomic, strong, readwrite) UIView *right_view;

/**
 底部分割线
 */
@property (nonatomic, strong, readwrite) CAShapeLayer *bottom_line;

@property (nonatomic, assign, readwrite) BOOL isDefaultsBackBtn;

@end

@implementation ScNavigation

- (instancetype)initWithFrame:(CGRect)frame {
    if([super initWithFrame:frame]) {
        [self x_loadviews];
        [self x_loadlayouts];
    }
    return self;
}

- (void)x_loadviews {
    self.backgroundColor = [UIColor whiteColor];
}

- (void)x_loadlayouts {
    self.frame = CGRectMake(0, 0, scBar_width(), scBar_height());
}

#pragma mark - lazy load

- (UIImageView *)bg_image {
    if(!_bg_image) {
        _bg_image = [[UIImageView alloc] init];
        _bg_image.frame = self.bounds;
        _bg_image.userInteractionEnabled = true;
        _bg_image.backgroundColor = [UIColor clearColor];
        [self insertSubview:_bg_image atIndex:0];
    }
    return _bg_image;
}

- (UILabel *)title_label {
    if(!_title_label) {
        CGFloat title_label_width = ([UIScreen mainScreen].bounds.size.width / 375.0) * 180.0;
        CGFloat viewHeight = scBar_height() - scBar_startY();
        
        _title_label = [[UILabel alloc] init];
        self.title_label.frame = CGRectMake((scBar_width() - title_label_width) / 2.0, scBar_startY(), title_label_width, viewHeight);
        _title_label.textAlignment = NSTextAlignmentCenter;
        _title_label.font = [UIFont fontWithName:@"PingFangSC-Medium" size:18];
        _title_label.textColor = [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0 alpha:1];
        [self insertSubview:_title_label aboveSubview:self.bg_image];
    }
    return _title_label;
}

- (UIButton *)back_btn {
    if(!_back_btn) {
        CGFloat viewHeight = scBar_height() - scBar_startY();
        CGFloat btnWidth = 44.0;
        
        self.isDefaultsBackBtn = true;
        
        _back_btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_back_btn setImage:[UIImage imageNamed:[[[NSBundle mainBundle] pathForResource:@"ScNavigationBar" ofType :@"bundle"] stringByAppendingPathComponent:@"back"]] forState:UIControlStateNormal];
        _back_btn.frame = CGRectMake(13, scBar_startY(), btnWidth, viewHeight);
        [self insertSubview:_back_btn aboveSubview:self.bg_image];
    }
    return _back_btn;
}

- (UIView *)right_view {
    if(!_right_view) {
        _right_view = [[UIView alloc] init];
        _right_view.userInteractionEnabled = true;
        _right_view.frame = CGRectMake(scBar_width() - 55, scBar_startY(), 50, scBar_height() - scBar_startY());
        [self insertSubview:_right_view aboveSubview:self.bg_image];
    }
    return _right_view;
}

- (CAShapeLayer *)bottom_line {
    if(!_bottom_line) {
        CGFloat centerY = 0.5;
        UIBezierPath *linePath = [UIBezierPath bezierPath];
        [linePath moveToPoint:CGPointMake(0, scBar_height() - centerY)];
        [linePath addLineToPoint:CGPointMake(scBar_width(), scBar_height() - centerY)];
        
        _bottom_line = [CAShapeLayer layer];
        _bottom_line.lineWidth = centerY * 2;
        _bottom_line.strokeColor = [UIColor colorWithRed:243 green:243 blue:243 alpha:1].CGColor;
        _bottom_line.path = linePath.CGPath;
        [self.layer addSublayer:_bottom_line];
    }
    return _bottom_line;
}

@end
