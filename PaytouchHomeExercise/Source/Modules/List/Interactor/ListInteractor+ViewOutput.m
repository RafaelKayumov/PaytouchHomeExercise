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
    [self.objectsLoadingService loadObjectsWithCompletion:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        NSLog(@"%@", objects);
    }];
}

@end
