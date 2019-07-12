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
#import "ObjectsFactoryProtocol.h"
#import "CoreDataStack.h"
#import "CacheRequest.h"
#import "CacheTracker.h"
#import "CacheTransactionBatch.h"
#import "FlickrObject+CoreDataProperties.h"
#import "FlickrObject+Additions.h"
#import "FlickrObjectPlain.h"
#import "ListModuleOutput.h"

@interface ListInteractor() <CacheTrackerDelegate>

@property (nonatomic, weak) id<ListViewInput> view;
@property (nonatomic, strong) FlickrObjectsLoadingService *objectsLoadingService;
@property (nonatomic, strong) id<ObjectsFactoryProtocol> plainObjectsFactory;
@property (nonatomic, strong) CoreDataStack *coreDataStack;
@property (nonatomic, strong) CacheTracker *cacheTracker;

@end

@implementation ListInteractor

#pragma mark - Object

- (instancetype)initWithView:(id <ListViewInput>) listViewInput
       objectsLoadingService:(FlickrObjectsLoadingService *)objectsLoadingService
         plainObjectsFactory:(id<ObjectsFactoryProtocol>)plainObjectsFactory
               coreDataStack:(CoreDataStack *)coreDataStack {
    if (self = [super init]) {
        _view = listViewInput;
        _objectsLoadingService = objectsLoadingService;
        _plainObjectsFactory = plainObjectsFactory;
        _coreDataStack = coreDataStack;
    }

    return self;
}

#pragma mark - Public

- (void)startDataTracking {
    [self setupDataTracker];
}

- (void)onPlainObjectSelection:(FlickrObjectPlain *)flickrObjectPlain {
    [self.output onFlickrObjectSelection:flickrObjectPlain];
}

#pragma mark - Methods

- (void)loadData {
    [self.view setRefreshingDisplayed:YES];
    NSManagedObjectContext *backgroundContext = self.coreDataStack.backgroundContext;

    __weak ListInteractor *weakSelf = self;
    [self.objectsLoadingService loadObjectsWithCompletion:^(NSArray<NSDictionary *> * _Nullable objects, NSError * _Nullable error) {
        [weakSelf.view setRefreshingDisplayed:NO];

        if (error) {
            dispatch_async(dispatch_get_main_queue(), ^(void){
                [weakSelf.view displayError:error];
            });
            return;
        }

        [FlickrObject removeAllOnContext:backgroundContext];
        for (NSDictionary *object in objects) {
            [FlickrObject createWithDictionary:object inContext:backgroundContext];
        }
        [backgroundContext save:nil];
    }];
}

- (void)setupDataTracker {
    CacheRequest* request = [CacheRequest new];

    request.entityName = NSStringFromClass([FlickrObject class]);
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"dateTaken" ascending:NO]];
    self.cacheTracker = [CacheTracker cacheTracker:request
                                          delegate:self
                                    objectsFactory:self.plainObjectsFactory
                                           context:self.coreDataStack.mainContext];

    CacheTransactionBatch *initBatch = [self.cacheTracker obtainTransactionBatchFromCurrentCache];
    [self feedBatchToOutput:initBatch];
}

#pragma mark - Private

- (void)feedBatchToOutput:(CacheTransactionBatch *)batch {
    [self.view consumeTransactionBatch:batch];
}

#pragma mark - CacheTrackerDelegate

- (void)didProcessTransactionBatch:(CacheTransactionBatch *)transactionBatch {
    [self feedBatchToOutput:transactionBatch];
}

@end
