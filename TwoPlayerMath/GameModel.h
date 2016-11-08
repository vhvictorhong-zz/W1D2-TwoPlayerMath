//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Victor Hong on 07/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@class Player;

@interface GameModel : NSObject

@property NSInteger answer;
@property NSArray <Player *> *players;
@property NSInteger playerNumber;

-(NSString *)generateRandomQuestion;
-(void)generateAnswer:(NSInteger)num1 secondNumber:(NSInteger)num2;
-(NSInteger)generateRandomNumber;
-(NSString *)checkIfCorrect:(NSString *)answer;

@end
