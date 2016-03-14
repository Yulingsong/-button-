//
//  ViewController.m
//  缩放button封装
//
//  Created by yulingsong on 16/3/14.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "ViewController.h"
#import "YLSButton.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   YLSButton *button = [YLSButton touchUpOutsideCancleButtonWithType:UIButtonTypeCustom frame:CGRectMake(0, 0, ScreenWidth - 20, 80) titlt:@"按钮1" titleColor:[UIColor blackColor] backgroundColor:[UIColor cyanColor] backgroundImage:nil andBlock:^{
       NSLog(@"点击按钮1");
   }];
    button.buttonScale = 1.5;
    button.center = CGPointMake(self.view.frame.size.width/2., 80);
    [self.view addSubview:button];
    
//    CGFloat gap = 5;
//    
//    JXTPushInButton * imgBtn1 = [JXTPushInButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(gap, CGRectGetMaxY(btn2.frame) + 10, ScreenWidth - 2*gap, 80) title:nil titleColor:nil backgroundColor:nil backgroundImage:@"btn1" andBlock:^{
//        NSLog(@"执行图片按钮-1");
//    }];
//    imgBtn1.adjustsImageWhenHighlighted = NO;//去除点击灰色
//    [self.view addSubview:imgBtn1];
//    
//    NSArray * rectArray = @[[NSValue valueWithCGRect:CGRectMake(gap, CGRectGetMaxY(imgBtn1.frame) + gap, (ScreenWidth - 3*gap)/2, 60)],
//                            [NSValue valueWithCGRect:CGRectMake(gap, CGRectGetMaxY(imgBtn1.frame) + 60+2*gap, (ScreenWidth - 5*gap)/4, 90)],
//                            [NSValue valueWithCGRect:CGRectMake(2*gap + (ScreenWidth - 5*gap)/4, CGRectGetMaxY(imgBtn1.frame) + 60+2*gap, (ScreenWidth - 5*gap)/4, 90)],
//                            [NSValue valueWithCGRect:CGRectMake(3*gap + 2*(ScreenWidth - 5*gap)/4, CGRectGetMaxY(imgBtn1.frame) + gap, (ScreenWidth - 4*gap)/2, 60)],
//                            [NSValue valueWithCGRect:CGRectMake(3*gap + 2*(ScreenWidth - 5*gap)/4, CGRectGetMaxY(imgBtn1.frame) + 60+2*gap, (ScreenWidth - 5*gap)/4, 90)],
//                            [NSValue valueWithCGRect:CGRectMake(4*gap + 3*(ScreenWidth - 5*gap)/4, CGRectGetMaxY(imgBtn1.frame) + 60+2*gap, (ScreenWidth - 5*gap)/4, 90)]
//                            ];
//    
//    for (int i = 0; i < 6; i ++) {
//        NSValue * value = rectArray[i];
//        CGRect rect = value.CGRectValue;
//        NSString * ima = [NSString stringWithFormat:@"btn%zd", i + 2 <= 4 ? i + 2 : i - 1];
//        JXTPushInButton * imgBtn = [JXTPushInButton buttonWithType:UIButtonTypeCustom frame:rect title:nil titleColor:nil backgroundColor:nil backgroundImage:ima andBlock:^{
//            NSLog(@"执行图片按钮-%zd", i + 2);
//        }];
//        imgBtn.buttonScale = 0.8;
//        imgBtn.adjustsImageWhenHighlighted = NO;//去除点击灰色
//        [self.view addSubview:imgBtn];
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
