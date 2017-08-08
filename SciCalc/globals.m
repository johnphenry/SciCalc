//
//  globals.m
//  SciCalc
//
//  Created by John Henry on 8/6/17.
//  Copyright © 2017 John Henry. All rights reserved.
//

#import "globals.h"

NSString *HistoryString = @"";
NSString *Expression = @"";


const char* getPath(NSString*str){
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docs_dir = [paths objectAtIndex:0];
    NSString* aFile = [docs_dir stringByAppendingPathComponent: str];
    return [aFile fileSystemRepresentation];
}
const char* getDocumentsDir(void){
    return getPath(@"data.sav");
}
