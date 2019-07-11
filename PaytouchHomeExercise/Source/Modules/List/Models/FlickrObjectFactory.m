//
//  FlickrObjectFactory.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObjectFactory.h"
#import "FlickrObject+CoreDataClass.h"
#import "FlickrObjectPlain.h"

@implementation FlickrObjectFactory

- (id)objectFromNSManagedObject:(FlickrObject *)managedObject {
    if (![managedObject.entity.name isEqualToString:NSStringFromClass([FlickrObject class])]) {
        return nil;
    }

    FlickrObjectPlain *model = [FlickrObjectPlain new];
    model.title = managedObject.title;
    model.dateTaken = managedObject.dateTaken;
    model.link = managedObject.link;
    model.media = managedObject.media;
    model.mediaLink = managedObject.mediaLink;
    model.descriptionString = managedObject.descriptionString;

    return model;
}

@end
