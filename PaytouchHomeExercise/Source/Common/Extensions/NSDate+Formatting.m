//
//  NSDate+Formatting.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "NSDate+Formatting.h"

@implementation NSDate (Formatting)

- (NSString *)asStringWithTemplate:(NSString *)template {
    NSString *format = [NSDateFormatter dateFormatFromTemplate:template options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = format;

    return [formatter stringFromDate:self];
}

- (NSString *)detailsString {
    return [self asStringWithTemplate:@"dMMMHHmm"];
}

@end
