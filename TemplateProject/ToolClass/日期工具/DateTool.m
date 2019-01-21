//
//  DateTool.m
//  TemplateProject
//
//  Created by mac on 2018/12/20.
//  Copyright © 2018 韩扬. All rights reserved.
//

#import "DateTool.h"

@implementation DateTool

+(int)compareDate:(NSDate*)date01 withDate:(NSDate*)date02{
    int ci;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *oneDayStr = [dateFormatter stringFromDate:date01];
    
    NSString *anotherDayStr = [dateFormatter stringFromDate:date02];
    
    NSDate *dateA = [dateFormatter dateFromString:oneDayStr];
    
    NSDate *dateB = [dateFormatter dateFromString:anotherDayStr];
    
    NSComparisonResult result = [dateA compare:dateB];
    switch (result)
    {
            //date02比date01大
        case NSOrderedAscending: ci=1; break;
            //date02比date01小
        case NSOrderedDescending: ci=-1; break;
            //date02=date01
        case NSOrderedSame: ci=0; break;
        default: NSLog(@"erorr dates %@, %@", date02, date01); break;
    }
    return ci;
}


+ (NSString *)getNowDateWithFormatterStr:(NSString *)formatterStr
{
    NSDate * now = [NSDate date];
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = formatterStr;
    formatter.locale = [NSLocale currentLocale];
    NSString * timeStr = [formatter stringFromDate:now];
    return timeStr;
}

+ (NSString *)time_timestampToString:(NSInteger)timestamp{
    
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timestamp];
    
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    NSString* string=[dateFormat stringFromDate:confromTimesp];
    
    return string;
    
}

+ (NSString *)dateToStringWithDate:(NSDate *)date
                   andFormatterStr:(NSString *)formatterStr
{
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:formatterStr];
    
    NSString* string= [dateFormat stringFromDate:date];
    
    return string;
}

+ (NSDate *)stringTodateWithTimeStr:(NSString *)timeStr
                    andFormatterStr:(NSString *)formatterStr
{
    //规定时间格式
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatterStr];
    //设置时区  全球标准时间CUT 必须设置 我们要设置中国的时区
//    NSTimeZone *zone = [[NSTimeZone alloc] initWithName:@"CUT"];
    [formatter setTimeZone:[NSTimeZone localTimeZone]];
    //变回日期格式
    NSDate *stringDate = [formatter dateFromString:timeStr];
//    NSLog(@"stringDate = %@",stringDate);
    return stringDate;
}



@end
