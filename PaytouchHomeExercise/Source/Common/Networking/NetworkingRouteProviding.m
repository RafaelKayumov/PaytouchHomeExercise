//
//  NetworkingRouteProviding.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkingRouteProviding.h"
#import "NSDictionary+URLQueryItem.h"

NSString *const kURLScheme = @"https";

NSURL* NSURLFromNetworkingRouteProviding(id<NetworkingRouteProviding> networkingRouteProviding) {
    NSURLComponents *components = [NSURLComponents new];
    components.scheme = kURLScheme;
    components.host = networkingRouteProviding.host;
    components.path = networkingRouteProviding.path;
    components.queryItems = networkingRouteProviding.queryParams.urlQueryItems;

    return components.URL;
}
