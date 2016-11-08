//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Victor Hong on 07/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@implementation GameModel

-(instancetype)init {
    
    if (self = [super init]) {
        
        _answer = 0;
        Player *playerOne = [[Player alloc] init];
        Player *playerTwo = [[Player alloc] init];
        _players = @[playerOne, playerTwo];
        _playerNumber = 1;
        
    }
    
    return self;
    
}

-(NSString *)generateRandomQuestion {
    
    NSInteger numberOne = [self generateRandomNumber];
    NSInteger numberTwo = [self generateRandomNumber];
    
    NSString *question = [NSString stringWithFormat:@"Player %ld: %ld + %ld", (long)self.playerNumber, (long)numberOne, (long)numberTwo];
    
    [self generateAnswer:numberOne secondNumber:numberTwo];
    
    return question;
    
}

-(void)generateAnswer:(NSInteger)num1 secondNumber:(NSInteger)num2 {
    
    self.answer = num1 + num2;

}

-(NSInteger)generateRandomNumber {
    
    return arc4random_uniform(20) + 1;
    
}

-(NSString *)checkIfCorrect:(NSString *)answer {
    
    NSInteger answerInteger = [answer integerValue];
    
    self.playerNumber = self.playerNumber == 1 ? 2 : 1;
    
    if (answerInteger == self.answer) {
        
        [self.players[self.playerNumber - 1] incrementScore];
        return @"Right answer";
        
    } else {
        
        [self.players[self.playerNumber - 1] lostALife];

        return @"Wrong answer";
        
    }
    
}

@end
