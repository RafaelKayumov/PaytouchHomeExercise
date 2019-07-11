//
//  NetworkingTransport.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkingRouteProviding.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^DataTaskCompletion)(NSData * _Nullable, NSURLResponse * _Nullable, NSError * _Nullable);

@interface NetworkingTransport : NSObject

- (instancetype)initWithSession:(NSURLSession *)session;
- (NSURLSessionDataTask *)queryRoute:(id <NetworkingRouteProviding>)route completion:(DataTaskCompletion)completion;

@end

NS_ASSUME_NONNULL_END
