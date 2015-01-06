//
//  ViewController.m
//  stretchCalculator
//
//  Created by Kevin on 1/5/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *consoleLabel;
@property NSString *stack;
@property double Result;
@property int opType;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.stack = @"";
}

//concatonate numbers to stack
-(void)addNumber:(int)number
{
    self.stack = [NSString stringWithFormat:@"%1$@%2$d", self.stack, number];

    [self.consoleLabel setText:self.stack];
}

// missing type and optype and operator
-(void)logic:(int)type{
    if(type == 0){ // Equals
        
        if(self.opType == 1)
        {
            self.stack = [NSString stringWithFormat:@"%.2f", [self.stack doubleValue]+self.Result];
        }else if(self.opType == 2)
        {
            self.stack = [NSString stringWithFormat:@"%.2f", [self.stack doubleValue]-self.Result];

        }else if(self.opType == 3)
        {
            self.stack = [NSString stringWithFormat:@"%.2f", [self.stack doubleValue]*self.Result];

        }else if(self.opType == 4)
        {
            self.stack = [NSString stringWithFormat:@"%.2f", [self.stack doubleValue]/self.Result];

        }
        [self.consoleLabel setText:self.stack];
//        [opperator setText:@"="];
    }else{
        if(type == 1){ // addition
//            [opperator setText:@" "];

        }else if(type == 2){ // subtraction
//            [opperator setText:@"-"];
        }else if(type == 3){ // multiply
//            [opperator setText:@"*"];
        }else if(type == 4){ // division
//            [opperator setText:@"/"];
        }
        self.opType = type;
        self.Result = [self.stack doubleValue];
        self.stack = @" ";
        [self.consoleLabel setText:self.stack];

    }
}



- (IBAction)buttonZero:(id)sender {
    [self addNumber:0];
}

- (IBAction)buttonOne:(id)sender {
    [self addNumber:1];
}

- (IBAction)buttonTwo:(id)sender {
    [self addNumber:2];
}

- (IBAction)buttonThree:(id)sender {
    [self addNumber:3];
}

- (IBAction)buttonFour:(id)sender {
    [self addNumber:4];
}

- (IBAction)buttonFive:(id)sender {
    [self addNumber:5];
}

- (IBAction)buttonSix:(id)sender {
    [self addNumber:6];
}

- (IBAction)buttonSeven:(id)sender {
    [self addNumber:7];
}

- (IBAction)buttonEight:(id)sender {
    [self addNumber:8];
}

- (IBAction)buttonNine:(id)sender {
    [self addNumber:9];
}

- (IBAction)onButtonAllClearPressed:(id)sender {
    self.stack = @" ";
    [self.consoleLabel setText:self.stack];

}
- (IBAction)addPoint:(id)sender {
    self.stack = [NSString stringWithFormat:@"%1$@.", self.stack];
    [self.consoleLabel setText:self.stack];
}

- (IBAction)onButtonDivisionPressed:(id)sender {
    [self logic:4];
}

- (IBAction)onButtonMultiplicationPressed:(id)sender {
    [self logic:3];
}

- (IBAction)onButtonMinusPressed:(id)sender {
    [self logic:2];
}

- (IBAction)onButtonAdditionPressed:(id)sender {
    [self logic:1];
}

- (IBAction)onButtonEqualPressed:(id)sender {
    [self logic:0];
}



@end
