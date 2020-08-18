//
//  ScNavigationVar.h
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
/** 是否是X系手机*/
BOOL scBar_isX(void);
/**导航的高度*/
CGFloat scBar_height(void);
/**导航布局开始的Y坐标*/
CGFloat scBar_startY(void);
/**屏幕的宽度*/
CGFloat scBar_width(void);
/** 字符串取值操作，如果为 nil 返回 "" */
NSString *scBar_string(NSString *empty);

NS_ASSUME_NONNULL_BEGIN

@interface ScNavigationVar : NSObject

@end

NS_ASSUME_NONNULL_END
