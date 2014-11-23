//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *modifiableStatement = [@"" mutableCopy];
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
    
    
    NSString *string = @"";
    for (;number1 < number2+1;number1++) {
        string = [NSString stringWithFormat:@"%ld", (long)number1];
        [modifiableStatement appendString:string];
    }
    
    return modifiableStatement;
}

@end
