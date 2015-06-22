//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    
    NSMutableString *mDeliString = [NSMutableString new];
    
    if (deliLine.count == 0) {
        [mDeliString appendString:@"The line is currently empty."];
        return [NSString stringWithString:mDeliString];
    }
    
    [mDeliString appendString:@"The line is:"];
    for (NSUInteger i = 0; i < deliLine.count; i++) {
        NSUInteger numberInLine = i + 1;
        [mDeliString appendFormat:@"\n%lu. %@", numberInLine, deliLine[i]];
    }
    
    return [NSString stringWithString:mDeliString];
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = [deliLine firstObject];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

@end
