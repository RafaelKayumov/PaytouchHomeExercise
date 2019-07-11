//
//  FlickrObjectsLoadingRoute.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObjectsLoadingRoute.h"

NSString *const kFlickrHost = @"api.flickr.com";
NSString *const kFlickrObjectsListPath = @"/services/feeds/photos_public.gne";

@implementation FlickrObjectsLoadingRoute

#pragma mark - Object

- (instancetype) initWithRouteType:(FlickrObjectsLoadingRouteType)routeType {
    if (self = [super init]) {
        _routeType = routeType;
    }

    return self;
}

#pragma mark - NetworkingRouteProviding

- (NSString *)host {
    switch (self.routeType) {
        case FlickrObjectsLoadingRouteTypeList:
            return kFlickrHost;
    }
}

- (NSString *)path {
    switch (self.routeType) {
        case FlickrObjectsLoadingRouteTypeList:
            return kFlickrObjectsListPath;
    }
}

- (NSDictionary<NSString *, NSString *> *)queryParams {
    switch (self.routeType) {
        case FlickrObjectsLoadingRouteTypeList:
            return @{
                     @"format": @"json",
                     @"lang": @"en-us",
                     @"nojsoncallback": @"1"
                     };
    }
}

- (NSURL *)url {
    return NSURLFromNetworkingRouteProviding(self);
}

@end
