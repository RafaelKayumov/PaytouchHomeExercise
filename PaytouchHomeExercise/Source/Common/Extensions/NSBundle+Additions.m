//
//  NSBundle+Additions.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "NSBundle+Additions.h"

@implementation NSBundle (Additions)

- (NSString *)appName {
    return [self infoDictionary][@"CFBundleName"];
}

@end
