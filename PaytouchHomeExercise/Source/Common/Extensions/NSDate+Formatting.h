//
//  NSDate+Formatting.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Formatting)

- (NSString *)asStringWithTemplate:(NSString *)template;
- (NSString *)detailsString;

@end

NS_ASSUME_NONNULL_END
