//
//  ScNavigationVar.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ScNavigationVar.h"

/** 是否是X系手机*/
BOOL scBar_isX(void){
    if (@available(iOS 11.0, *)) {\
        return [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;
    }
    return NO;
}
/**导航的高度*/
CGFloat scBar_height(void){
    return scBar_isX() ? 88 : 64;
}
/**导航布局开始的Y坐标*/
CGFloat scBar_startY(void){
    return scBar_isX() ? 44 : 20;
}
/**屏幕的宽度*/
CGFloat scBar_width(void){
    return [UIScreen mainScreen].bounds.size.width;
}

/** 字符串取值操作，如果为 nil 返回 "" */
NSString *scBar_string(NSString *empty) {
    return empty ? : @"";
}

@implementation ScNavigationVar

@end
