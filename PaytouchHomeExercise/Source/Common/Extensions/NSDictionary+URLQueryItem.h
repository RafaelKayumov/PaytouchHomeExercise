//
//  NSDictionary+URLQueryItem.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (URLQueryItem)

- (NSArray<NSURLQueryItem *> *)urlQueryItems;

@end

NS_ASSUME_NONNULL_END
