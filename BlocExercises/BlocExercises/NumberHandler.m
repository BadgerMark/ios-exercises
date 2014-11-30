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
    NSInteger number1 = 0;
    NSInteger number2 = 0;

    BOOL isNumberGreatThanOtherNumber = (number >= otherNumber);
    if (isNumberGreatThanOtherNumber) {
        number2 = number;
        number1 = otherNumber;
        
    }else{
        number1 = number;
        number2 = otherNumber;
    }
    
        for (;number1 < number2+1;number1++) {
        NSNumber *num = [NSNumber numberWithInteger:number1];
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
