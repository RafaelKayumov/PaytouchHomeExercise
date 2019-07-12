//
//  OHHTTPStubs+Additions.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "OHHTTPStubs+Additions.h"
#import "FlickrObjectsLoadingRoute.h"
#import "NSURL+Equivalence.h"

@implementation OHHTTPStubs (Additions)

+ (void)stubNetworkingWithDataBundle:(NSBundle *)bundle {
    [OHHTTPStubs stubRequestsPassingTest:^BOOL(NSURLRequest *request) {
        FlickrObjectsLoadingRoute *route = [[FlickrObjectsLoadingRoute alloc] initWithRouteType:FlickrObjectsLoadingRouteTypeList];
        return [request.URL isEquivalent:route.url];
    } withStubResponse:^OHHTTPStubsResponse*(NSURLRequest *request) {
        NSString *filepath = [bundle pathForResource:@"ResponseStub" ofType:@"json"];
        NSData *responseData = [NSData dataWithContentsOfFile:filepath];
        return [OHHTTPStubsResponse responseWithData:responseData statusCode:200 headers:nil];
    }];
}

@end
