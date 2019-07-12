//
//  FlickrObject+Additions.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObject+Additions.h"
#import "NSManagedObjectContext+Additions.h"

@implementation FlickrObject (Additions)

+ (instancetype)createWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context {
    FlickrObject *newObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(self.class) inManagedObjectContext:context];

    newObject.descriptionString = dictionary[@"description"];
    newObject.title = dictionary[@"title"];

    NSString *mediaLinkString = dictionary[@"media"][@"m"];
    if (mediaLinkString.length > 0) {
        newObject.mediaLink = [[NSURL alloc] initWithString:mediaLinkString];
    }

    NSString *linkString = dictionary[@"link"];
    if (linkString.length > 0) {
        newObject.link = [[NSURL alloc] initWithString:linkString];
    }

    NSString *dateString = dictionary[@"date_taken"];
    if (dateString.length > 0) {
        newObject.dateTaken = [[NSISO8601DateFormatter new] dateFromString:dateString];
    }

    return newObject;
}

+ (void)removeAllOnContext:(NSManagedObjectContext *)context {
    NSArray<NSManagedObject *> *allObjects = [context fetchAllForEntityName:NSStringFromClass(self)];
    for (NSManagedObject *managedObject in allObjects) {
        [context deleteObject:managedObject];
    }
}

@end
