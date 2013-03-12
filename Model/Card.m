//
//  Card.m
//  Matchismo
//
//  Created by JODY WATSON on 2/4/13.
//  Copyright (c) 2013 Jody Watson. All rights reserved.
//

#import "Card.h"

// This lets me define properties that are private to Card.
@interface Card()
@end

@implementation Card

- (int)match:(NSArray*)otherCards;
{
    int score = 0;
    
    for(Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
