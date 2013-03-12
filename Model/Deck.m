//
//  Deck.m
//  Matchismo
//
//  Created by JODY WATSON on 2/4/13.
//  Copyright (c) 2013 Jody Watson. All rights reserved.


#import "Deck.h"

@interface Deck()
// Declare a private property that's a pointer to an array.
// That array is going to be a bunch of cards.

@property (strong, nonatomic) NSMutableArray *cards;
@end


@implementation Deck

// Lazy instantiation.
// We write our own getter to create the cards array on the fly.
// Lazy I. b/c we wait to initialize until after the thing is
// called.
// If it doesn't exist, we create it on first use.
// Now, addCard will AT LEAST return a blank, allocated mutable
// array. It WILL NEVER return NIL.
- (NSMutableArray *)cards
{
    // alloc and init always go together, nested like this.
    // alloc space, then initialize.
    // init could have args.
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

// This will crash because you cannot put NIL in an array.
// Should first check if self.cards is NIL.
- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else    {
        [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    // not necessary; don't have to init local vars.
    Card *randomCard = nil;
    
    if (self.cards.count)  {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
         
    }
         return randomCard;
}

@end
