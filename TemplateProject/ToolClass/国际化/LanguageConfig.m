//
//  LanguageConfig.m
//  TemplateProject
//
//  Created by 韩扬 on 2018/12/11.
//  Copyright © 2018 韩扬. All rights reserved.
//

#import "LanguageConfig.h"
static NSString *const kUserLanguage = @"kUserLanguage";
#define STANDARD_USER_DEFAULT  [NSUserDefaults standardUserDefaults]

@implementation LanguageConfig
+ (void)setUserLanguage:(NSString *)userLanguage
{
    //跟随手机系统
    if (!userLanguage.length) {
        [self resetSystemLanguage];
        return;
    }
    //用户自定义
    [STANDARD_USER_DEFAULT setValue:userLanguage forKey:kUserLanguage];
    [STANDARD_USER_DEFAULT setValue:@[userLanguage] forKey:@"AppleLanguages"];
    [STANDARD_USER_DEFAULT synchronize];
}

+ (NSString *)userLanguage
{
    return [STANDARD_USER_DEFAULT valueForKey:kUserLanguage];
}

/**
 重置系统语言
 */
+ (void)resetSystemLanguage
{
    [STANDARD_USER_DEFAULT removeObjectForKey:kUserLanguage];
    [STANDARD_USER_DEFAULT setValue:nil forKey:@"AppleLanguages"];
    [STANDARD_USER_DEFAULT synchronize];
}


@end
