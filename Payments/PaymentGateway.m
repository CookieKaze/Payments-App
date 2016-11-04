//
//  PaymentGateway.m
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (CGFloat) number {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:number];
    } else {
        NSLog(@"Payment can't be processed.");
    }
    

}

@end
