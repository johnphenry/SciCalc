//
//  HistoryController.m
//  SciCalc
//
//  Created by John Henry on 8/7/17.
//  Copyright © 2017 John Henry. All rights reserved.
//

#import "HistoryController.h"
#import "globals.h"

@interface HistoryController ()

@end

@implementation HistoryController


@synthesize HistoryDisplay;

- (void)viewDidLoad {
    [super viewDidLoad];
    HistoryDisplay.scrollEnabled = YES;
    HistoryDisplay.editable = NO;
    HistoryDisplay.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SHOW_HISTORY:(id)sender {
    HistoryDisplay.text = HistoryString;
}
- (IBAction)CLEAR_HISTORY:(id)sender {
    HistoryString = @"";
    HistoryDisplay.text = @"";
}


@end
