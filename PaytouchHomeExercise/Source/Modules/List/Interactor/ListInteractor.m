//
//  ListInteractor.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ListInteractor.h"
#import "ListViewInput.h"
#import "FlickrObjectsLoadingService.h"

@interface ListInteractor()

@property (nonatomic, weak) id<ListViewInput> view;
@property (nonatomic, strong) FlickrObjectsLoadingService *objectsLoadingService;

@end

@implementation ListInteractor

#pragma mark - Object

- (instancetype)initWithView:(id <ListViewInput>) listViewInput objectsLoadingService:(FlickrObjectsLoadingService *)objectsLoadingService {
    if (self = [super init]) {
        _view = listViewInput;
        _objectsLoadingService = objectsLoadingService;
    }

    return self;
}

#pragma mark - Methods

@end
