//
//  ViewController.m
//  DelegateStockCode
//
//  Created by James Rochabrun on 14-06-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "ViewController.h"

//step 6 use the delegate protocol
@interface ViewController ()<TapImageDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //step 8 define the outlet as a delegated object
    self.imageview.delegate = self;
}

//step 9 use the public method to perform an action
- (void)didTapImage {
    self.imageview.backgroundColor = [UIColor redColor];
}



@end
