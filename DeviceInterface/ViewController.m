//
//  ViewController.m
//  DeviceInterface
//
//  Created by fuchun on 2017/6/9.
//  Copyright © 2017年 le. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

#define KScreenSize [UIScreen mainScreen].bounds.size
@interface ViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

//1627
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, KScreenSize.width, 100)];
    _btn.backgroundColor = [UIColor redColor];
    [_btn setTitle:@"旋转屏幕" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

//-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskLandscape;
//}

//1
//-(void)viewDidLayoutSubviews
//{
//    UIInterfaceOrientation Orientation = [[UIApplication sharedApplication] statusBarOrientation];
//    
//    if (Orientation != UIInterfaceOrientationPortrait) {
//   
//    } else {
//    
//    }
//    
//    _btn.frame = CGRectMake(0, 0, KScreenSize.width, 100);
//}

- (void)btnClick:(UIButton *)btn
{
    btn.selected =! btn.selected;
    NSNumber *value = [NSNumber numberWithInt:btn.selected? UIInterfaceOrientationLandscapeRight:UIInterfaceOrientationPortrait];
    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
}

//2
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"ddd");
    _btn.frame = CGRectMake(0, 0, KScreenSize.width, 100);
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    self.navigationController.navigationBar.hidden = YES;
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    self.navigationController.navigationBar.hidden = NO;
//}

- (IBAction)click:(UIButton *)sender {
     [self.navigationController pushViewController:[AViewController new] animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
