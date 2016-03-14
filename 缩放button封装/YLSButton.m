//
//  YLSButton.m
//  缩放button封装
//
//  Created by yulingsong on 16/3/14.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "YLSButton.h"

#define animateDelay 0.15 //默认动画执行时间
#define defaultScale 0.9  //默认缩小的比率

@implementation YLSButton

+(YLSButton *)buttonWithType:(UIButtonType)type frame:(CGRect)frame titlt:(NSString *)title titleColor:(UIColor *)color backgroundColor:(UIColor *)backgroundColor backgroundImage:(NSString *)image andBlock:(block)tempBlock
{
    YLSButton *button = [YLSButton buttonWithType:type];
    [button setFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setBackgroundColor:backgroundColor];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button addTarget:button action:@selector(pressedEvent:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:button action:@selector(unpressedEvent:) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
    [button setBlock:tempBlock];
    
    return button;
}

+(YLSButton *)touchUpOutsideCancleButtonWithType:(UIButtonType)type frame:(CGRect)frame titlt:(NSString *)title titleColor:(UIColor *)color backgroundColor:(UIColor *)backgroundColor backgroundImage:(NSString *)image andBlock:(block)tempBlock
{
    YLSButton *button = [YLSButton buttonWithType:type];
    [button setFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setBackgroundColor:backgroundColor];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button addTarget:button action:@selector(pressedEvent:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:button action:@selector(unpressedEvent:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:button action:@selector(cancleEvent:) forControlEvents:UIControlEventTouchUpOutside];
    [button setBlock:tempBlock];

    return button;
}

//按钮点击下去变小
-(void)pressedEvent:(YLSButton *)button
{
    CGFloat scale = (_buttonScale && _buttonScale <=1.0)? _buttonScale:defaultScale;
    [UIView animateWithDuration:animateDelay animations:^{
        [button setTransform:CGAffineTransformMakeScale(scale, scale)];
    }];
}

//点击收拾脱出按钮frame区域松开，响应取消
-(void)cancleEvent:(YLSButton *)button
{
    [UIView animateWithDuration:animateDelay animations:^{
        [button setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
    }completion:^(BOOL finished) {
        
    }];
}

//松开按钮，按钮复原
-(void)unpressedEvent:(YLSButton *)button
{
    [UIView animateWithDuration:animateDelay animations:^{
        [button setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
    }completion:^(BOOL finished) {
        if (self.block)
        {
            self.block();
        }
    }];
}





















@end
