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

    __block FISAppDelegate *delegate;
    __block NSMutableArray *deliLine;
    
    beforeAll(^{
        
    });
    
    beforeEach(^{
        appDelegate = [[FISAppDelegate alloc] init];
        deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita B.", @"Alan K.", @"Ada L.", @"Aaron S."] ];
    });

    describe(@"addName:toDeliLine:", ^{
        it(@"is declared and defined", ^{
            expect(appDelegate).to.respondTo(@selector(addName:toDeliLine:));
        });

        it(@"should insert a name at the end of the line", ^{
            [appDelegate addName:(@"Alan K.") toDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Anita B.", @"Alan K.", @"Ada L.", @"Aaron S.", @"Alan T."]);
        });
    });

    describe(@"serveNextCustomerInDeliLine:", ^{
        it(@"is declared and defined", ^{
            expect(appDelegate).to.respondTo(@selector(serveNextCustomerInDeliLine:));
        });

        it(@"should remove the first name in line", ^{
            [appDelegate serveNextCustomerInDeliLine:deliLine];
            expect(deliLine).to.equal(@[@"Alan K.", @"Ada L.", @"Aaron S."]);
        });
    });

    describe(@"stringWithDeliLine:", ^{
        it(@"is declard and defined", ^{
            expect(appDelegate).to.respondTo(@selector(stringWithDeliLine:));
        });

        it(@"returns the customers in line as a string", ^{
            NSString *deliString = [appDelegate stringWithDeliLine:deliLine];
            expect(deliString).to.equal(@"The line is currently:\n1. Anita B.\n2. Alan K.\n3. Ada L.\n4. Aaron S.");
        });

        it(@"return explain if the line is empty", ^{
            [deliLine removeAllObjects];
            expect([delegate deliLine:deliLine]).to.equal(@"The line is currently empty.");
        });
    });

    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
