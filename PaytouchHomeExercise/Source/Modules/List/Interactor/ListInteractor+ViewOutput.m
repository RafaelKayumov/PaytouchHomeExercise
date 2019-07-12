//
//  ListInteractor+ViewOutput.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ListInteractor+ViewOutput.h"
#import "FlickrObjectsLoadingService.h"

@implementation ListInteractor (ViewOutput)

- (void)onViewReady {
    [self startDataTracking];
    [self loadData];
}


- (void)didSelectPlainModel:(FlickrObjectPlain *)flickrObjectPlain {
    [self onPlainObjectSelection:flickrObjectPlain];
}

@end
