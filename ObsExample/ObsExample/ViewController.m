//
//  ViewController.m
//  ObsExample
//
//  Created by tansheng on 2019/3/5.
//  Copyright © 2019年 stv. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import <UIImageView+WebCache.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *logo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_logo sd_setImageWithURL:[NSURL URLWithString:@"https://ss0.bdstatic.com/l4oZeXSm1A5BphGlnYG/skin/843.jpg?2"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        NSLog(@"%@", error);
    }];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"push to login page" forState:UIControlStateNormal];
    btn.frame = CGRectMake((CGRectGetWidth(UIScreen.mainScreen.bounds)-200)/2, 100, 200, 44);
    [btn addTarget:self action:@selector(pushToLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)pushToLogin {
    LoginViewController *vc = [LoginViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
