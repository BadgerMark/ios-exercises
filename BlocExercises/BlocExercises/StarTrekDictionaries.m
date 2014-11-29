//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id idFavoriteDrink = characterDictionary[@"favorite drink"];
    if (idFavoriteDrink != nil && [idFavoriteDrink isKindOfClass:[NSString class]]) {
        return idFavoriteDrink;
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray* trekkies = [[NSMutableArray alloc] init];
    for(NSDictionary* charDictionary in charactersArray)
    {
        NSString* drinks = charDictionary[@"favorite drink"];
        [trekkies addObject:drinks];
    }
    return trekkies;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *quoteDictionary = [[NSMutableDictionary alloc]init];
    NSString *quoteString = [[NSString alloc]init];
    id idQuote = characterDictionary[@"quote"];
    if (idQuote != nil && [idQuote isKindOfClass:[NSString class]]) {
        quoteString = [idQuote stringValue];
    }else{
        quoteString = @"There... Are... Four... Lights!";
    }
    [quoteDictionary setObject:quoteString forKey:@"quote"];    
    return quoteDictionary;
}

@end
