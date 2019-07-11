//
//  NetworkingTransport.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "NetworkingTransport.h"

@interface NetworkingTransport()

@property (nonatomic, strong) NSURLSession *session;

@end

@implementation NetworkingTransport

- (instancetype)initWithSession:(NSURLSession *)session {
    if (self = [super init]) {
        _session = session;
    }

    return self;
}

- (NSURLSessionDataTask *)queryRoute:(id <NetworkingRouteProviding>)route completion:(DataTaskCompletion)completion {
    return [self fetchDataWithURL:route.url completion:completion];
}

- (NSURLSessionDataTask *)fetchDataWithURL:(NSURL *)url completion:(DataTaskCompletion)completion {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    request.HTTPMethod = @"GET";
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

    return [self performRequest:request completion:completion];
}

- (NSURLSessionDataTask *)performRequest:(NSURLRequest *)request completion:(DataTaskCompletion)completion {
    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request completionHandler:completion];
    [dataTask resume];

    return dataTask;
}

@end
