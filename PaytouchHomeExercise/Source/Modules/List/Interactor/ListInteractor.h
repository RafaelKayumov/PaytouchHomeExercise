//
//  ListInteractor.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ListViewInput;
@class FlickrObjectsLoadingService;

@interface ListInteractor : NSObject

@property (nonatomic, strong, readonly) FlickrObjectsLoadingService *objectsLoadingService;

- (instancetype)initWithView:(id <ListViewInput>) listViewInput objectsLoadingService:(FlickrObjectsLoadingService *)objectsLoadingService;

@end

NS_ASSUME_NONNULL_END
