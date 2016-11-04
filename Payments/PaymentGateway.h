//
//  PaymentGateway.h
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount: (NSInteger) number;

@end

@interface PaymentGateway : NSObject

@property (weak, nonatomic) id <PaymentDelegate> delegate;
-(void) processPaymentAmount: (NSInteger) number;

@end
