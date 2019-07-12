//
//  ListInteractor.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ListViewInput, ObjectsFactoryProtocol, ListModuleOutput;
@class FlickrObjectsLoadingService, CoreDataStack, FlickrObjectPlain;

NS_ASSUME_NONNULL_BEGIN

@interface ListInteractor : NSObject

@property (nonatomic, weak) id<ListModuleOutput> output;
@property (nonatomic, strong, readonly) FlickrObjectsLoadingService *objectsLoadingService;

- (instancetype)initWithView:(id <ListViewInput>) listViewInput
       objectsLoadingService:(FlickrObjectsLoadingService *)objectsLoadingService
         plainObjectsFactory:(id<ObjectsFactoryProtocol>)plainObjectsFactory
               coreDataStack:(CoreDataStack *)coreDataStack;
- (void)startDataTracking;
- (void)loadData;
- (void)onPlainObjectSelection:(FlickrObjectPlain *)flickrObjectPlain;

@end

NS_ASSUME_NONNULL_END
