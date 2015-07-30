//
//  FISAppDelegateSpec.m
//  Objc-deli
//
//  Created by Joe Burgess on 5/29/14.
//  Copyright 2014 Flatiron School. All rights reserved.
//

#import "Specta.h"
#import "FISAppDelegate.h"
#define EXP_SHORTHAND
#import <Expecta.h>

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{

    __block FISAppDelegate *appDelegate;
    __block NSMutableArray *deliLine;
    __block NSMutableArray *deliLine2;
    __block NSString *deliString;
    __block NSString *deliString2;
    
    beforeAll(^{
        
    });
    
    beforeEach(^{
        appDelegate = [[FISAppDelegate alloc] init];
        deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"] ];
      deliLine2 = [[NSMutableArray alloc] initWithArray:@[@"Joe",@"Mark"]];
        deliString = [appDelegate stringWithDeliLine:deliLine];
        deliString2 = [appDelegate stringWithDeliLine:deliLine2];
    });
    
    describe(@"stringWithDeliLine:", ^{
        it(@"returns an NSString object", ^{
            expect(deliString).to.beKindOf([NSString class]);
        });
        
        it(@"returns the customers in line as a string", ^{
            expect(deliString).to.equal(@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan");
            expect(deliString2).to.equal(@"The line is:\n1. Joe\n2. Mark");
        });
        
        it(@"explains if the line is empty", ^{
            [deliLine removeAllObjects];
            deliString = [appDelegate stringWithDeliLine:deliLine];
            expect(deliString).to.equal(@"The line is currently empty.");
        });
    });

    describe(@"addName:toDeliLine:", ^{
        it(@"should insert a name at the end of the line", ^{
            deliLine = [appDelegate addName:@"Michael" toDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", @"Michael" ]);
        });
        it(@"should work for multiple insertions", ^{
            deliLine = [appDelegate addName:@"Michael" toDeliLine:deliLine];
            deliLine = [appDelegate addName:@"Grace" toDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", @"Michael", @"Grace"]);
        });
    });

    describe(@"serveNextCustomerInDeliLine:", ^{
        it(@"should remove only the first name in the line", ^{
            [appDelegate serveNextCustomerInDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Alan", @"Ada", @"Aaron", @"Alan"]);
        });
        it(@"should remove one name each time it's called", ^{
            [appDelegate serveNextCustomerInDeliLine:deliLine];
            [appDelegate serveNextCustomerInDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Ada", @"Aaron", @"Alan"]);
        });
        
        it(@"should return the correct customer name", ^{
            NSString *nextCustomer = [appDelegate serveNextCustomerInDeliLine:deliLine];
            expect(nextCustomer).to.equal(@"Anita");

            nextCustomer = [appDelegate serveNextCustomerInDeliLine:deliLine];
            expect(nextCustomer).to.equal(@"Alan");
        });
    });


    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
