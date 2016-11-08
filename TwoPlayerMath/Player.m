//
//  Player.m
//  TwoPlayerMath
//
//  Created by Victor Hong on 07/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init {
    
    if (self = [super init]) {
        
        _currentPlayerLives = 3;
        _currentPlayerScore = 0;
        
    }
    
    return self;
    
}

-(void)lostALife {
    
    self.currentPlayerLives -= 1;
    
    if (self.currentPlayerLives == 0) {
        
        
        
        NSLog(@"Game over");
        
    }
    
}

-(void)incrementScore {
    
    self.currentPlayerScore += 1;
    
}

@end
