//
//  ListInteractor.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ListInteractor.h"
#import "ListViewInput.h"

@interface ListInteractor()

@property (nonatomic, weak) id<ListViewInput> view;

@end

@implementation ListInteractor

#pragma mark - Object

- (instancetype)initWithView:(id <ListViewInput>) listViewInput {
    if (self = [super init]) {
        _view = listViewInput;
    }

    return self;
}

#pragma mark - Methods

@end
