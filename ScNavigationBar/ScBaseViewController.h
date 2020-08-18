//
//  ScBaseViewController.h
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


/**
 以下方法生命周期执行顺序如下
 */
@interface ScBaseViewController : UIViewController

/**
 初始化基础数据
 */
- (void)sc_loadInitDatas;

/**
 构建页面
 */
- (void)sc_loadViews;

/**
 设置布局
 */
- (void)sc_loadLayouts;

/**
 加载数据
 */
- (void)sc_loadDatas;

@end

NS_ASSUME_NONNULL_END
