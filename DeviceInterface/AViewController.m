//
//  AViewController.m
//  DeviceInterface
//
//  Created by fuchun on 2017/6/9.
//  Copyright © 2017年 le. All rights reserved.
//

#import "AViewController.h"

#define KScreenSize [UIScreen mainScreen].bounds.size

@interface AViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, KScreenSize.width, 100)];
    _btn.backgroundColor = [UIColor orangeColor];
//    [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
