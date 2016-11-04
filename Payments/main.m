//
//  main.m
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


@class  PaypalPaymentService;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup amount and payment methods
        CGFloat amount = (arc4random_uniform(90000)+10000)/100.0;
        NSArray * paymentMethods = @[@"Paypal", @"Stripe", @"Amazon", @"ApplePay"];
        
        NSLog(@"Your total today is $%.2f.", amount);
        NSLog(@"Please select your payment method:");
        for (NSString * item in paymentMethods){
            NSLog(@"%d. %@", (int)[paymentMethods indexOfObject:item]+1, item);
        }
        // Get user payment choice
        char input [100];
        fgets(input, 100, stdin);
        NSString * choice = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
        choice = [choice stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger paymentChoice = [choice intValue];
        
        // Instantiate payment gateway
        PaymentGateway * paymentGateway = [PaymentGateway new];
        
        // Instantiate payment methods and process payment
        switch (paymentChoice) {
            case 1:
            {
                PaypalPaymentService * paypal = [PaypalPaymentService new];
                paymentGateway.delegate = paypal;
                [paymentGateway processPaymentAmount:amount];
            }
                break;
            case 2:
            {
                StripePaymentService * stripe = [StripePaymentService new];
                paymentGateway.delegate = stripe;
                [paymentGateway processPaymentAmount:amount];
            }
                break;
            case 3:
            {
                AmazonPaymentService * amazon = [AmazonPaymentService new];
                paymentGateway.delegate = amazon;
                [paymentGateway processPaymentAmount:amount];
            }
            case 4:
            {
                ApplePaymentService * apple = [ApplePaymentService new];
                paymentGateway.delegate = apple;
                [paymentGateway processPaymentAmount:amount];
            }
                break;
            default:
                break;
        }
        
        
        
        
    }
    return 0;
}
