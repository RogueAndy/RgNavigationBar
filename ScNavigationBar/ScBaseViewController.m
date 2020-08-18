//
//  ScBaseViewController.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ScBaseViewController.h"

@interface ScBaseViewController ()

@end

@implementation ScBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"============= %@ +++++++++++++", [self class]);
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = true;
    self.automaticallyAdjustsScrollViewInsets = false;
    self.navigationController.interactivePopGestureRecognizer.enabled = true;
    
    [self sc_loadInitDatas];
    [self sc_loadViews];
    [self sc_loadLayouts];
    [self sc_loadDatas];
}

- (void)sc_loadInitDatas{}

- (void)sc_loadViews{}

- (void)sc_loadLayouts{}

- (void)sc_loadDatas{}

- (void)dealloc {
    NSLog(@"dealloc ============= %@ ------------", [self class]);
}

@end
