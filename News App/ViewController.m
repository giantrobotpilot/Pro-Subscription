//
//  ViewController.m
//  News App
//
//  Created by Andrew Christensen on 10/2/15.
//  Copyright © 2015 Markit on Demand. All rights reserved.
//

#import "ViewController.h"
#import "ProSubscriptionService.h"

@interface ViewController ()

@property (strong, nonatomic) ProSubscriptionService *store;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.store = [[ProSubscriptionService alloc] init];
    [self.store requestProducts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
