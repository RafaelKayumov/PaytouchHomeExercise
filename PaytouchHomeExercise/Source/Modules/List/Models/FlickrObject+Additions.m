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

    //newObject.link = dictionary[@"link"];
    //newObject.dateTaken = dictionary[@"date_taken"];
    newObject.descriptionString = dictionary[@"description"];
    newObject.title = dictionary[@"title"];
    //newObject.mediaLink = dictionary[@"media"][@"m"];

    NSLog(@"OLOLO %@", newObject);
    return newObject;
}

+ (void)removeAllOnContext:(NSManagedObjectContext *)context {
    NSArray<NSManagedObject *> *allObjects = [context fetchAllForEntityName:NSStringFromClass(self)];
    for (NSManagedObject *managedObject in allObjects) {
        [context deleteObject:managedObject];
    }
}

@end
