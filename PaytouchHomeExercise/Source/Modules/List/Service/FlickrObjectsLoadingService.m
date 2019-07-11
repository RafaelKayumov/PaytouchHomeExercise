//
//  FlickrObjectsLoadingService.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObjectsLoadingService.h"
#import "NetworkingTransport.h"
#import "NetworkingRouteProviding.h"
#import "FlickrObjectsLoadingRoute.h"

NSString *const kItems = @"items";

@interface FlickrObjectsLoadingService()

@property (nonatomic, strong) NetworkingTransport *networkingTransport;
@property (nonatomic, weak, nullable) NSURLSessionDataTask *dataTask;

@end

@implementation FlickrObjectsLoadingService

- (instancetype)initWithNetworkingTransport:(NetworkingTransport *)networkingTransport {
    if (self = [super init]) {
        _networkingTransport = networkingTransport;
    }

    return self;
}

- (void)loadObjectsWithCompletion:(FlickrObjectsLoadingCompletion)completion {
    FlickrObjectsLoadingRoute *route = [[FlickrObjectsLoadingRoute alloc] init];
    self.dataTask = [self.networkingTransport queryRoute:route completion:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *parsingError;
        NSDictionary *payloadJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error: &parsingError];
        NSArray *itemsJSON = payloadJSON[kItems];
        
        completion(itemsJSON, error ?: parsingError);
    }];
}

- (void)cancelTask {
    [self.dataTask cancel];
    self.dataTask = nil;
}

@end
