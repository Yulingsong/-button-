//
//  YLSButton.h
//  缩放button封装
//
//  Created by yulingsong on 16/3/14.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^block)();

@interface YLSButton : UIButton

@property (nonatomic,copy) block block;
@property (nonatomic,assign) CGFloat buttonScale;//缩小的比率，小于=1.0,大于0.0

//常规方法
+(YLSButton *)buttonWithType:(UIButtonType)type
                       frame:(CGRect)frame
                       titlt:(NSString *)title
                  titleColor:(UIColor *)color
             backgroundColor:(UIColor *)backgroundColor
             backgroundImage:(NSString *)image
                    andBlock:(block)tempBlock;

//此方法初始化的按钮，点击后，在按钮frame内部松手，执行响应，拖出frame区域松手，响应取消
+(YLSButton *)touchUpOutsideCancleButtonWithType:(UIButtonType)type
                                           frame:(CGRect)frame
                                           titlt:(NSString *)title
                                      titleColor:(UIColor *)color
                                 backgroundColor:(UIColor *)backgroundColor
                                 backgroundImage:(NSString *)image
                                        andBlock:(block)tempBlock;

@end
