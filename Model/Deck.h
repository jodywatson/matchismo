//
//  Deck.h
//  Matchismo
//
//  Created by JODY WATSON on 2/4/13.
//  Copyright (c) 2013 Jody Watson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

// This method has 2 arguments and returns nothing.
// Method name is addCard:atTop:
// Arg

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
