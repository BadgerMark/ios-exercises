//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    [self setMyArrayToRemember:arrayToRemember];
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    [self setMyArrayToCopy:arrayToCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    [self setMyFloatToRemember:floatToRemember];
}

- (NSMutableArray *) arrayYouShouldRemember {
    return _myArrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.myArrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    return self.myFloatToRemember;
}

@end