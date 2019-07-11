//
//  AppAssembly.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppAssembly.h"
#import "ListTableViewController+ViewInput.h"
#import "ListInteractor+ModuleInput.h"
#import "ListInteractor+ViewOutput.h"
#import "ListModuleInput.h"
#import "FlickrObjectsLoadingService.h"
#import "NetworkingTransport.h"
#import "FlickrObjectFactory.h"
#import "CoreDataStack.h"

@interface AppAssembly()

@property (nonatomic, strong) CoreDataStack *coreDataStack;
@property (nonatomic, weak) id <ListModuleInput> listModule;

@end

@implementation AppAssembly

- (instancetype)initWithCoreDataStack:(CoreDataStack *)coreDataStack {
    if (self = [super init]) {
        _coreDataStack = coreDataStack;
    }

    return self;
}

- (UIViewController *)assembleListModuleAndReturnView {
    ListTableViewController *listViewController = [ListTableViewController new];
    NSURLSession *session = [NSURLSession sessionWithConfiguration: NSURLSessionConfiguration.defaultSessionConfiguration];
    NetworkingTransport *transport = [[NetworkingTransport alloc] initWithSession:session];
    FlickrObjectsLoadingService *objectsLoadingService = [[FlickrObjectsLoadingService alloc] initWithNetworkingTransport:transport];

    FlickrObjectFactory *factory = [FlickrObjectFactory new];
    ListInteractor *listInteractor = [[ListInteractor alloc] initWithView:listViewController objectsLoadingService:objectsLoadingService plainObjectsFactory:factory coreDataStack:self.coreDataStack];

    listViewController.output = listInteractor;
    self.listModule = listInteractor;

    return listViewController;
}

@end
