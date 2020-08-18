//
//  ViewController.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ScNavigationBar.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"首页" leftButton:nil right:nil];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(btnaction) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(20, 100, 100, 30);
    [btn setTitle:@"下一步" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)btnaction {
    [self.navigationController pushViewController:[TwoViewController new] animated:true];
}

@end
