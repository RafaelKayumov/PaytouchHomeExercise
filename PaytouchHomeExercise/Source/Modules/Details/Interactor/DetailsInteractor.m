//
//  DetailsInteractor.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "DetailsInteractor.h"
#import "FlickrObjectPlain.h"
#import "DetailsViewInput.h"

@interface DetailsInteractor ()

@property (nonatomic, weak) id<DetailsViewInput> view;

@end

@implementation DetailsInteractor

#pragma mark - Object

- (instancetype)initWithView:(id<DetailsViewInput>)detailsViewInput {
    if (self = [super init]) {
        _view = detailsViewInput;
    }

    return self;
}

#pragma mark - Methods

- (void)displayFlickrObjectPlainDetails:(FlickrObjectPlain *)flickrObjectPlain {
    [self.view displayHTMLString:flickrObjectPlain.descriptionString];
}

@end
