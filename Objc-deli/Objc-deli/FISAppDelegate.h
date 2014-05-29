//
//  FISAppDelegate.h
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSMutableArray *)takeANumberWithDeli:(NSMutableArray *)deli Name:(NSString *)name;
- (NSMutableArray *)nowServingWithDeli:(NSMutableArray *)deli;
- (NSString *)lineWithDeli:(NSMutableArray *)deli;

@end
