//
//  NSManagedObjectContext+Additions.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSManagedObjectContext (Additions)

- (NSArray<NSManagedObject *> *)fetchAllForEntityName:(NSString *)entityname;

@end

NS_ASSUME_NONNULL_END
