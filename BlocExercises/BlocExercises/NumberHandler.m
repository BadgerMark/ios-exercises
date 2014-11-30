//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int intNumber = number.intValue;
    intNumber = intNumber * 2;
    NSNumber *intNSNumber = [NSNumber numberWithInt:intNumber];
    return intNSNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberArray = [NSMutableArray new];
    for (; number <= otherNumber; number++) {
        NSNumber *num = [NSNumber numberWithInteger:number];
        [numberArray addObject:num];
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *mutableArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(compare:)];
    [mutableArray sortUsingDescriptors:@[sortDescriptor]];
    NSNumber *returnThisNumber = mutableArray[0];
    return returnThisNumber.integerValue;
}

@end
