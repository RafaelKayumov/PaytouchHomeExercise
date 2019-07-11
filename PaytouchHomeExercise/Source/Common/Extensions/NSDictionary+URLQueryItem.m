//
//  NSDictionary+URLQueryItem.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "NSDictionary+URLQueryItem.h"

@implementation NSDictionary (URLQueryItem)

- (NSArray<NSURLQueryItem *> *)urlQueryItems {
    NSMutableArray<NSURLQueryItem *> *queryItems = @[].mutableCopy;
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:NSString.class]) {
            NSURLQueryItem *item = [[NSURLQueryItem alloc] initWithName:key value:obj];
            [queryItems addObject:item];
        }
    }];

    return queryItems;
}

@end
