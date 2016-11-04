//
//  StripePaymentService.m
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount: (CGFloat) number {
    NSLog(@"Stripe processed amount: $%.2f.",number);
}

-(BOOL) canProcessPayment {
    int x = arc4random_uniform(2);
    BOOL canProcess;
    switch (x) {
        case 0:
            canProcess = NO;
            break;
        case 1:
            canProcess = YES;
        default:
            break;
    }
    return canProcess;
}

@end
