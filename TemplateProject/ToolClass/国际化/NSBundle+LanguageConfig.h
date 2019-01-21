//
//  NSBundle+LanguageConfig.h
//  TemplateProject
//
//  Created by 韩扬 on 2018/12/11.
//  Copyright © 2018 韩扬. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (LanguageConfig)

+ (BOOL)isChineseLanguage;

+ (NSString *)currentLanguage;

@end

NS_ASSUME_NONNULL_END
