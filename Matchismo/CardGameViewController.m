//
//  CardGameViewController.m
//  Matchismo
//
//  Created by JODY WATSON on 2/4/13.
//  Copyright (c) 2013 Jody Watson. All rights reserved.
//
//
// This is the implementation (.m) file for our MVC Controller.
// It contains its private methods and properties
// Notice the @implementation - @end syntax.


// Your homework is to make each flip draw a new card
// (instead of showing A􂀕 all the time).
// Just add a deck property to your Controller
// then draw a random card from it with each flip to face up.

//  Declare an object of type Deck.
//  Call Deck's drawRandom care


#import "CardGameViewController.h"


/////////////////////////////////////////////////////
// HW0:
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
///////////////////////////////////////////////////////////////

@interface CardGameViewController ()
// OUTLET connection goes here.
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

/////////////////////////////////////////////////////
// HW0:
@property (nonatomic) Deck *deck;
@property (nonatomic) Card *card;
// @property (weak, nonatomic) IBOutlet UIButton *flipsCard;
///////////////////////////////////////////////////////////////

@end

@implementation CardGameViewController
// ACTION connection goes here.


-(void)setFlipCount:(int)flipCount
// implement the flipCount's setter to update the Label in the UI.
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
    // output to console
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
   // sender.
    sender.selected = !sender.isSelected;
    self.flipCount++;
}

@end
