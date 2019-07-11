//
//  NSManagedObjectContext+Additions.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "NSManagedObjectContext+Additions.h"

@implementation NSManagedObjectContext (Additions)

- (NSArray<NSManagedObject *> *)fetchAllForEntityName:(NSString *)entityname {
    NSFetchRequest *allObjectsRequest = [[NSFetchRequest alloc] initWithEntityName:entityname];
    return [self executeFetchRequest:allObjectsRequest error:nil];
}

@end
