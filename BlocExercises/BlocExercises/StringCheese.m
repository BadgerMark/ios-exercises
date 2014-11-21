//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    return [NSString stringWithFormat:@"My favorite cheese is %@.",cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.length > 0) {
        return [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    }
    
    return cheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *beholdThePowerOfCheese;
    if (cheeseCount == 1) {
        beholdThePowerOfCheese = @"cheese";
    } else {
        beholdThePowerOfCheese = @"cheeses";
    }
    return [NSString stringWithFormat:@"%lu %@", (unsigned long)cheeseCount, beholdThePowerOfCheese];
}

@end
