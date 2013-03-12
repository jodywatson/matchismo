//
//  PlayingCard.m
//  Matchismo
//
//  Created by JODY WATSON on 2/4/13.
//  Copyright (c) 2013 Jody Watson. All rights reserved.
//

//  A playingcard is a specific subclass of Card.

//  A - means this method is sent to instances of objects.
//  A + means this is a class method

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents
{
   
    // Here we're implementing the contents' getter.
    // The @ means Object. Special message to an object to print. (VERIFY THIS)
    // Create an array on the fly.
    
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",
                            @"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    
}

// Because we implemented BOTH THE SETTER AND THE GETTER,
// we don't get the FREE @ SIGN SYNTHESIZER. Unfortunate, but, alas.
// So, we have implement the synthesizer
@synthesize suit = _suit;
@synthesize rank = _rank;

// + means a class method
+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit
{
    if ([@[@"♥",@"♦",@"♠",@"♣"] containsObject:suit]) {
        _suit = suit;
    }
}

// A card with a rank of zero (the default for a property)
// will show up as ? in Card's contents.
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",
             @"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank { return [self rankStrings].count-1; }

- (void)setRank:(NSUInteger)rank
{
    
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
