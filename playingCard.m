//
//  playingCard.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "playingCard.h"

@implementation playingCard
@synthesize suit = _suit;

-(void)setSuit:(NSString *)suit
{
    if ([[playingCard validSuits] containsObject:_suit]) {
        _suit = suit;
    }
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (void) setRank:(NSUInteger)rank
{
    if(rank <= [ playingCard maxRank]){
        _rank = rank;
    }
}

- (NSString *)contents {
    NSArray *rankString = [playingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] -1;
}

+ (NSArray *)validSuits
{
    return @[@"❤️",@"♣️",@"♠️",@"♦️"];
}

- (NSString *)suit
{
    return _suit ? _suit :@"?";
}

@end
