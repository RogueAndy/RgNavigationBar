//
//  TwoViewController.m
//  ScNavigationBarDemo
//
//  Created by rogue on 2019/6/26.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "TwoViewController.h"
#import "UIViewController+ScNavigationBar.h"
#import "ScNavigationVar.h"

@interface ThreeC : ScBaseViewController

@end

@implementation ThreeC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"第一个页面" leftButton:self.sc_navigationBar.back_btn right:nil];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
}

@end






@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *left = [UIButton buttonWithType:UIButtonTypeCustom];
    [left addTarget:self action:@selector(lef) forControlEvents:UIControlEventTouchUpInside];
    [left setTitle:@"返回" forState:UIControlStateNormal];
    [left setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    left.frame = CGRectMake(13, scBar_startY(), 50, 44);
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeCustom];
    [right addTarget:self action:@selector(btnaction) forControlEvents:UIControlEventTouchUpInside];
    [right setTitle:@"哈哈" forState:UIControlStateNormal];
    [right setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    right.frame = CGRectMake(13, 0, 50, 44);
    
    [self setTitle:@"two" leftButton:left right:right];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(btnaction) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(20, 100, 100, 30);
    [btn setTitle:@"下一步" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
}

- (void)lef {
    [self.navigationController popViewControllerAnimated:true];
}



- (void)btnaction {
    [self.navigationController pushViewController:[ThreeC new] animated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
