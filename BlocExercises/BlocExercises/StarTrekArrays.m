//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *starTrek = [characterArray componentsJoinedByString:@";"];
    return starTrek;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *alphaArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [alphaArray sortUsingDescriptors:@[sortDescriptor]];
    return alphaArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSString *starTrek = [characterArray componentsJoinedByString:@";"];
    
    NSRange cheeseRange = [starTrek rangeOfString:@"Worf" options:NSCaseInsensitiveSearch];
    if (cheeseRange.length > 0) {
        return YES;
    }
    return NO;
}

@end
