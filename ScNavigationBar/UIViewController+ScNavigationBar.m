//
//  UIViewController+ScNavigationBar.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIViewController+ScNavigationBar.h"
#import "ScNavigationVar.h"

#import <objc/runtime.h>

static NSString *key_scNavigationBar = @"key_scNavigationBar";

@interface UIViewController()

@property (nonatomic, strong, readwrite) ScNavigation *sc_navigationBar;

@end

@implementation UIViewController (ScNavigationBar)

- (void)setTitle:(NSString *)title leftButton:(UIView * _Nullable)zd_leftbtn right:(UIView * _Nullable)zd_rightbtn {
    self.sc_navigationBar.title_label.text = scBar_string(title);
    self.sc_navigationBar.title_label.textAlignment = NSTextAlignmentCenter;
    self.sc_navigationBar.title_label.font = [UIFont fontWithName:@"PingFangSC-Medium" size:18];
    self.sc_navigationBar.title_label.textColor = [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0 alpha:1];
    self.sc_navigationBar.backgroundColor = [UIColor whiteColor];
    
    if(zd_leftbtn) {
        if(self.sc_navigationBar.isDefaultsBackBtn) {
            // 说明是使用的默认的back_btn
            [self.sc_navigationBar.back_btn addTarget:self action:@selector(scNavigationBar_Action:) forControlEvents:UIControlEventTouchUpInside];
        } else {
            [self.view insertSubview:zd_leftbtn aboveSubview:self.sc_navigationBar.bg_image];
        }
    }
    
    if(zd_rightbtn) {
        [self.sc_navigationBar.right_view addSubview:zd_rightbtn];
    }
    
}


#pragma mark - event

- (void)scNavigationBar_Action:(UIButton *)sender {
    if(self.navigationController.viewControllers.count == 1) {
        [self dismissViewControllerAnimated:true completion:nil];
        return;
    }
    [self.navigationController popViewControllerAnimated:true];
}

#pragma mark - Bind 属性

- (void)setSc_navigationBar:(ScNavigation *)sc_navigationBar {
    objc_setAssociatedObject(self, &key_scNavigationBar, sc_navigationBar, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (ScNavigation *)sc_navigationBar {
    id rtValue = objc_getAssociatedObject(self, &key_scNavigationBar);
    if(!rtValue) {
        rtValue = [[ScNavigation alloc] init];
        [self setSc_navigationBar:rtValue];
        [self.view addSubview:rtValue];
        
    }
    return rtValue;
}

@end
