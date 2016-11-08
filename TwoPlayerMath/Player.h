//
//  Player.h
//  TwoPlayerMath
//
//  Created by Victor Hong on 07/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentPlayerLives;
@property NSInteger currentPlayerScore;

-(void)lostALife;
-(void)incrementScore;

@end
