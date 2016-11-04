//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (CGFloat) number;
-(BOOL) canProcessPayment;

@end
