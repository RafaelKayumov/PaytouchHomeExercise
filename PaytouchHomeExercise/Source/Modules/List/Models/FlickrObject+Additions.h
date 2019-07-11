//
//  FlickrObject+Additions.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObject+CoreDataClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlickrObject (Additions)

+ (instancetype)createWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context;
+ (void)removeAllOnContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END
