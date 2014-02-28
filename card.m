//
//  card.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "card.h"

@implementation card

-(int)matched:(card *)a
{
    if ([self.contents isEqualToString:a.contents]) {
        return 1;
    }
    else{
        return 0;
    }
    
}

@end
