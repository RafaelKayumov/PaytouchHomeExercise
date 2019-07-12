//
//  NSURL+Equivalence.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

//taken from https://stackoverflow.com/questions/12310258/reliable-way-to-compare-two-nsurl-or-one-nsurl-and-an-nsstring

#import "NSURL+Equivalence.h"

@implementation NSURL (Equivalence)

- (BOOL)isEquivalent:(NSURL *)URL {
    if ([self isEqual:URL]) return YES;
    if ([[self scheme] caseInsensitiveCompare:[URL scheme]] != NSOrderedSame) return NO;
    if ([[self host] caseInsensitiveCompare:[URL host]] != NSOrderedSame) return NO;
    if ([[self path] compare:[URL path]] != NSOrderedSame) return NO;

    if ([self port] || [URL port]) {
        if (![[self port] isEqual:[URL port]]) return NO;
        if (![[self query] isEqual:[URL query]]) return NO;
    }

    return YES;
}

@end
