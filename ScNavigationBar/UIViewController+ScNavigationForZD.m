//
//  UIViewController+ScNavigationForZD.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/9/24.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIViewController+ScNavigationForZD.h"
#import "UIViewController+ScNavigationBar.h"
#import <RgBaseObject/ZRMacro.h>
#import <RgBaseObject/ZRColor.h>

@implementation UIViewController (ScNavigationForZD)

/**
 透明导航栏，白色字体s
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setTranslucentWithWhiteTitle:(NSString *)title {
    
    self.sc_navigationBar.backgroundColor = clear();
    self.sc_navigationBar.title_label.textColor = white();
    self.sc_navigationBar.title_label.text = ZR_string(title);
    return self.sc_navigationBar;
}

/**
 白色导航栏，黑色字体
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setDefaultsTitle:(NSString *)title {
    
    self.sc_navigationBar.backgroundColor = white();
    self.sc_navigationBar.title_label.textColor = colorWithHex(0x212121);
    self.sc_navigationBar.title_label.text = ZR_string(title);
    return self.sc_navigationBar;
}

/**
 白色导航栏带有默认返回按钮，黑色气体
 
 @param title 标题
 @return 导航栏对象
 */
- (UIView *)sc_setDefaultsTitleWithBack:(NSString *)title {
    
    self.sc_navigationBar.backgroundColor = white();
    self.sc_navigationBar.title_label.textColor = colorWithHex(0x212121);
    self.sc_navigationBar.title_label.font = ZR_match_font(16);
    self.sc_navigationBar.title_label.text = ZR_string(title);
    
    self.sc_navigationBar.bottom_line.strokeColor = colorWithHex(0xEBEDF0).CGColor;
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"block_back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backExe:) forControlEvents:UIControlEventTouchUpInside];
    back.frame = CGRectMake(15, ZRSafeAreaNaviTopY, 44, ZRSafeAreaTopHeight - ZRSafeAreaNaviTopY);
    back.tag = zd_nav_global_leftbtn;
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.sc_navigationBar addSubview:back];
    
    return self.sc_navigationBar;
}

- (UIView *)sc_setDefaultsTitleWithBackNoBottom:(NSString *)title {
    [self sc_setDefaultsTitleWithBack:title];
    //    self.sc_navigationBar.bottom_line.strokeColor = clear().CGColor;
    return self.sc_navigationBar;
}

- (UIView *)sc_setOnlyBackBtn {
    
    self.sc_navigationBar.backgroundColor = white();
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    back.tag = 20290;
    [back setImage:[UIImage imageNamed:@"block_back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backExe:) forControlEvents:UIControlEventTouchUpInside];
    back.frame = CGRectMake(15, ZRSafeAreaNaviTopY, 44, ZRSafeAreaTopHeight - ZRSafeAreaNaviTopY);
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.sc_navigationBar addSubview:back];
    
    return self.sc_navigationBar;
}


-(void)sc_ZD_addLine{
    self.sc_navigationBar.bottom_line.strokeColor = colorWithRgb(219, 223, 228).CGColor;
}

- (void)sc_zd_setTitle:(NSString *)title leftButton:(UIView * _Nullable)zd_leftbtn right:(UIView * _Nullable)zd_rightbtn{
    
    [self setTitle:title leftButton:zd_leftbtn right:zd_rightbtn];
}

- (UIButton *)sc_mm_backItemBtn{
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"block_back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backExe:) forControlEvents:UIControlEventTouchUpInside];
    back.frame = CGRectMake(15, ZRSafeAreaNaviTopY, 44, ZRSafeAreaTopHeight - ZRSafeAreaNaviTopY);
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    return back;
}

- (UIView *)sc_setTranslucentWithWhiteTitleAndBack:(NSString *)title {
    
    self.sc_navigationBar.backgroundColor = clear();
    self.sc_navigationBar.title_label.textColor = white();
    self.sc_navigationBar.title_label.text = ZR_string(title);
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"back_white_img"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backExe:) forControlEvents:UIControlEventTouchUpInside];
    back.frame = CGRectMake(15, ZRSafeAreaNaviTopY, 44, ZRSafeAreaTopHeight - ZRSafeAreaNaviTopY);
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.sc_navigationBar addSubview:back];
    
    return self.sc_navigationBar;
}

#pragma mark - event

- (void)backExe:(UIButton *)sender {
    if(self.navigationController.viewControllers.count == 1) {
        [self dismissViewControllerAnimated:true completion:nil];
        return;
    }
    [self.navigationController popViewControllerAnimated:true];
}


@end
