//
//  DateTool.h
//  TemplateProject
//
//  Created by mac on 2018/12/20.
//  Copyright © 2018 韩扬. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateTool : NSObject

/**
 时间比较
 @param date01 日期1
 @param date02 日期2
 @return int   1日起2比日期1大/ -1日起2比日期1小/ 0相等 
 */
+(int)compareDate:(NSDate*)date01 withDate:(NSDate*)date02;

/**
 获取当前时间
 @param formatterStr 格式化字符串
 @return NSString
 */
+ (NSString *)getNowDateWithFormatterStr:(NSString *)formatterStr;

/**
 日期转字符串
 @param date 日期
 @param formatterStr 格式化字符串
 @return NSString
 */
+ (NSString *)dateToStringWithDate:(NSDate *)date
                   andFormatterStr:(NSString *)formatterStr;

/**
 字符串转日期
 @param timeStr 日期字符串
 @param formatterStr 格式化字符串
 @return NSDate
 */
+ (NSDate *)stringTodateWithTimeStr:(NSString *)timeStr
                   andFormatterStr:(NSString *)formatterStr;

/**
 时间戳转时间
 @param timestamp 时间戳
 @return NSString
 */
+ (NSString *)time_timestampToString:(NSInteger)timestamp;

@end

NS_ASSUME_NONNULL_END
