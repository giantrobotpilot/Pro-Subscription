//
//  ProSubscriptionService.m
//  News App
//
//  Created by Andrew Christensen on 10/2/15.
//  Copyright © 2015 Markit on Demand. All rights reserved.
//

#import "ProSubscriptionService.h"

@interface ProSubscriptionService ()

@property (strong, nonatomic) SKProductsRequest *productsRequest;

@end

@implementation ProSubscriptionService

- (void)requestProducts
{
    NSSet *productIDs = [NSSet setWithObjects:@"OneMonthPro", @"OneYearPro_FreeTrial", nil];
    self.productsRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:productIDs];
    self.productsRequest.delegate = self;
    [self.productsRequest start];
}

#pragma mark - SKProductsRequestDelegate methods

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    NSArray *products = response.products;
    NSArray *invalidIdentifier = response.invalidProductIdentifiers;
    if (products.count > 0) {
        NSLog(@"Products: %@", products);
    }
    if (invalidIdentifier.count > 0) {
        NSLog(@"Invalid: %@", invalidIdentifier);
    }
}

#pragma mark - SKRequestDelegate emthods

- (void)requestDidFinish:(SKRequest *)request
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    NSLog(@"error: %@", error);
}

@end
