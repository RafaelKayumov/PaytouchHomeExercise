//
//  AppCoordinator+ListModuleOutput.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "AppCoordinator+ListModuleOutput.h"
#import "DetailsModuleInput.h"

@implementation AppCoordinator (ListModuleOutput)

- (void)onFlickrObjectSelection:(FlickrObjectPlain *)flickrObjectPlain {
    [self.assembly.detailsModule consumeFlickrObjectPlain:flickrObjectPlain];
}

@end
