//
//  DetailsInteractor+ModuleInput.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "DetailsInteractor+ModuleInput.h"
#import "FlickrObjectPlain.h"

@implementation DetailsInteractor (ModuleInput)

- (void)consumeFlickrObjectPlain:(FlickrObjectPlain *)flickrObjectPlain {
    [self displayFlickrObjectPlainDetails:flickrObjectPlain];
}

@end
