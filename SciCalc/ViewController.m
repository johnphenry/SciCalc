//
//  ViewController.m
//  SciCalc
//
//  Created by John Henry on 8/6/17.
//  Copyright © 2017 John Henry. All rights reserved.
//

#import "ViewController.h"
#import "globals.h"
#import "parse.h"
#import "data.h"
@interface ViewController ()

@end

@implementation ViewController

float answer;

@synthesize CalculatorDisplay;

- (void)viewDidLoad {
    [super viewDidLoad];
    CalculatorDisplay.scrollEnabled = YES;
    CalculatorDisplay.editable = NO;
    CalculatorDisplay.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clearDisplay{
    Expression = @"";
    [self updateDisplay];
}
-(void)updateDisplay{
    CalculatorDisplay.text = Expression;
}
-(void)join:(NSString*)str{
    Expression = [Expression stringByAppendingString:str];
    [self updateDisplay];
}

-(void)viewAnswer{
    [self clearDisplay];
    [self join:[NSString stringWithFormat:@"%g", answer]];
    [self updateDisplay];
}
/*Function Buttons*/
-(void)evaluate{
    answer = EvaluateExpression( [Expression cStringUsingEncoding:NSUTF8StringEncoding] );
    HistoryString = [HistoryString stringByAppendingString:Expression];
    HistoryString = [HistoryString stringByAppendingString:@"\n"];
    [self viewAnswer];
}
- (IBAction)EQUALS:(id)sender {
    [self evaluate];
}
- (IBAction)CLEAR:(id)sender {
    [self clearDisplay];
}

- (IBAction)STORE:(id)sender {
    [self evaluate];
    Storage = answer;
    SaveStorage();
}
- (IBAction)RECALL:(id)sender {
    LoadStorage();
    answer = Storage;
    [self viewAnswer];
}

/*Expression-manipulation buttons*/
- (IBAction)RADIX:(id)sender {
    [self join:@"."];
}

- (IBAction)ZERO:(id)sender {
    [self join:@"0"];
}
- (IBAction)ONE:(id)sender {
    [self join:@"1"];
}
- (IBAction)TWO:(id)sender {
    [self join:@"2"];
}
- (IBAction)THREE:(id)sender {
    [self join:@"3"];
}
- (IBAction)FOUR:(id)sender {
    [self join:@"4"];
}
- (IBAction)FIVE:(id)sender {
    [self join:@"5"];
}
- (IBAction)SIX:(id)sender {
    [self join:@"6"];
}
- (IBAction)SEVEN:(id)sender {
    [self join:@"7"];
}
- (IBAction)EIGHT:(id)sender {
    [self join:@"8"];
}
- (IBAction)NINE:(id)sender {
    [self join:@"9"];
}
- (IBAction)PLUS:(id)sender {
    [self join:@"+"];
}
- (IBAction)MINUS:(id)sender {
    [self join:@"-"];
}
- (IBAction)TIMES:(id)sender {
    [self join:@"*"];
}
- (IBAction)DIVIDE:(id)sender {
    [self join:@"/"];
}
- (IBAction)R_PAREN:(id)sender {
    [self join:@")"];
}
- (IBAction)L_PAREN:(id)sender {
    [self join:@"("];
}
- (IBAction)SIN:(id)sender {
    [self join:@"sin("];
}
- (IBAction)COS:(id)sender {
    [self join:@"cos("];
}
- (IBAction)TAN:(id)sender {
    [self join:@"tan("];
}
- (IBAction)LN:(id)sender {
    [self join:@"atan("];
}
- (IBAction)SQUARE:(id)sender {
    [self join:@"^2"];
}
- (IBAction)SQRT:(id)sender {
    [self join:@"sqrt("];
}
- (IBAction)LOG:(id)sender {
    [self join:@"log("];
}

@end
