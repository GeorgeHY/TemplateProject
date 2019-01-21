//
//  HYButton.h
//  TemplateProject
//
//  Created by 韩扬 on 2018/8/13.
//  Copyright © 2018年 韩扬. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    UIButtonTitleWithImageAlignmentUp = 0,  // 图片在上
    UIButtonTitleWithImageAlignmentLeft,
    UIButtonTitleWithImageAlignmentDown,
    UIButtonTitleWithImageAlignmentRight
} UIButtonTitleWithImageAlignment;

@interface HYButton : UIButton

/** 图片和文字间距 默认10px*/
@property (nonatomic , assign) CGFloat space; // distance between image and title, default is 10

/** 按钮类型 默认XDCustomButtonImageTop 图片在上边*/
@property (nonatomic , assign) UIButtonTitleWithImageAlignment HYbuttonType; // need to set a value when used

@end
