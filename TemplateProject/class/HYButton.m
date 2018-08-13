//
//  HYButton.m
//  TemplateProject
//
//  Created by 韩扬 on 2018/8/13.
//  Copyright © 2018年 韩扬. All rights reserved.
//

#import "HYButton.h"

@implementation HYButton

#pragma mark Layout Subview
- (void)layoutSubviews{
    [super layoutSubviews];
    
    // 1. 得到imageView和titleLabel的宽、高
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    // 2. 声明全局的imageEdgeInsets和labelEdgeInsets
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    //根据XDCustomButtonType和XD_spacing得到imageEdgeInsets和labelEdgeInsets的值
    switch (self.HYbuttonType) {
        case UIButtonTitleWithImageAlignmentUp:{
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight - self.space , 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight - self.space , 0);
            break;
        }
        case UIButtonTitleWithImageAlignmentLeft:{
            imageEdgeInsets = UIEdgeInsetsMake(0, -self.space , 0, self.space );
            labelEdgeInsets = UIEdgeInsetsMake(0, self.space , 0, -self.space );
            break;
        }
        case UIButtonTitleWithImageAlignmentDown:{
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight - self.space , -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight - self.space , -imageWith, 0, 0);
            break;
        }
        case UIButtonTitleWithImageAlignmentRight:{
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + self.space , 0, -labelWidth - self.space );
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith - self.space , 0, imageWith + self.space );
            break;
        }
        default:
            break;
    }
    
    
    // 4. 赋值
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
    
}


#pragma mark lazy loading
- (CGFloat)space{
    if (!_space) {
        _space = 5;
    }
    return _space;
}

@end
