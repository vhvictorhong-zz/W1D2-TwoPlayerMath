//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Victor Hong on 07/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *playerQuestion;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@property GameModel *gameModel;
@property Player *player;
@property NSString *answerInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _answerInput = @"";
    
    self.gameModel = [[GameModel alloc] init];
    
    self.playerQuestion.text = [self.gameModel generateRandomQuestion];
    
    [self.playerQuestion sizeToFit];
    
}

- (IBAction)enterZero:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"0"];
    
}

- (IBAction)enterOne:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"1"];
    
}

- (IBAction)enterTwo:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"2"];
    
}

- (IBAction)enterThree:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"3"];
    
}

- (IBAction)enterFour:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"4"];
    
}

- (IBAction)enterFive:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"5"];
    
}

- (IBAction)enterSix:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"6"];
    
}

- (IBAction)enterSeven:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"7"];
    
}

- (IBAction)enterEight:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"8"];
    
}

- (IBAction)enterNine:(UIButton *)sender {
    
    self.answerInput = [self.answerInput stringByAppendingString:@"9"];
    
}

- (IBAction)enterAnswer:(UIButton *)sender {
    
    self.displayLabel.text = [self.gameModel checkIfCorrect:self.answerInput];
    [self.displayLabel sizeToFit];
    
    NSInteger playerNumber = self.gameModel.playerNumber;
    //self.playerOneScore.text = self.player[playerNumber].currentPlayerScore;
    
    self.playerQuestion.text = [self.gameModel generateRandomQuestion];
    [self.playerQuestion sizeToFit];
    
    self.answerInput = @"";
    
}


@end
