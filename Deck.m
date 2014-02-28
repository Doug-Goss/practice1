//
//  Deck.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "Deck.h"
@interface Deck()
    @property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *) cards{
    if (!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(card *)c atTop:(BOOL)y
{
    if (y == TRUE) {

        [_cards insertObject:c atIndex:0];
    }
    else{
        [_cards addObject:c];
    }
}

-(void) addCard:(card *)c
{
    [self addCard:c atTop:NO];
}

-(card *)drawRandomCard
{
    card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [_cards count];
        randomCard = [_cards objectAtIndex:index];
        [_cards removeObject:randomCard];
    }
    return randomCard;
}

@end
