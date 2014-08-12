//
//  WaitingPenguin.m
//  PeevedPenguins
//
//  Created by Jesus Magana on 8/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "WaitingPenguin.h"

@implementation WaitingPenguin

-(void) didLoadFromCCB{
    //generate a random number between 0.0 and 2.0
    float delay = (arc4random() % 2000) /1000.f;
    //call method to start aniumation after random delay
    [self performSelector:@selector(startBlinkAndJump) withObject:nil afterDelay:delay];
}

- (void) startBlinkAndJump{
    //the animation mannager of each node is stored in 'animationManager'
    CCAnimationManager *animationManager = self.animationManager;
    //timelines can be referenced and run by name
    [animationManager runAnimationsForSequenceNamed:@"BlinkAndJump"];
}

@end
