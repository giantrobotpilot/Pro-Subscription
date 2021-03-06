//
//  ProSubscriptionService.h
//  News App
//
//  Created by Andrew Christensen on 10/2/15.
//  Copyright © 2015 Markit on Demand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@interface ProSubscriptionService : NSObject <SKProductsRequestDelegate, SKRequestDelegate>

- (void)requestProducts;

@end
