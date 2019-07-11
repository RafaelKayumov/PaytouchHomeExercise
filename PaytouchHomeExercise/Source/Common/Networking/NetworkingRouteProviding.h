//
//  NetworkingRouteProviding.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#ifndef NetworkingRouteProviding_h
#define NetworkingRouteProviding_h

@protocol NetworkingRouteProviding <NSObject>

@property (nonatomic, readonly) NSString *host;
@property (nonatomic, readonly) NSString *path;
@property (nonatomic, readonly) NSDictionary<NSString *, NSString *> *queryParams;
@property (nonatomic, readonly) NSURL *url;

@end

extern NSURL* NSURLFromNetworkingRouteProviding(id<NetworkingRouteProviding> networkingRouteProviding);

#endif /* NetworkingRouteProviding_h */
