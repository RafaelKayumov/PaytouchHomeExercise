//
//  FlickrObjectsLoadingRoute.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkingRouteProviding.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, FlickrObjectsLoadingRouteType) {
    FlickrObjectsLoadingRouteTypeList
};

@interface FlickrObjectsLoadingRoute: NSObject <NetworkingRouteProviding>

@property (nonatomic) FlickrObjectsLoadingRouteType routeType;

- (instancetype)initWithRouteType:(FlickrObjectsLoadingRouteType)routeType;

@end

NS_ASSUME_NONNULL_END
