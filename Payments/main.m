//
//  main.m
//  Payments
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup amount and payment methods
        CGFloat amount = arc4random_uniform(900)+100;
        NSArray * paymentMethods = @[@"Paypal", @"Stripe", @"Amazon"];
        
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
        NSInteger * paymentChoice = [choice intValue];
        
    }
    return 0;
}
