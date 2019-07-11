//
//  FlickrObjectsLoadingService.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NetworkingTransport;

typedef void (^FlickrObjectsLoadingCompletion)(NSArray<NSDictionary *> * _Nullable, NSError * _Nullable);

@interface FlickrObjectsLoadingService : NSObject

- (instancetype)initWithNetworkingTransport:(NetworkingTransport *)networkingTransport;
- (void)loadObjectsWithCompletion:(FlickrObjectsLoadingCompletion)completion;
- (void)cancelTask;

@end

NS_ASSUME_NONNULL_END
