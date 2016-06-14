//
//  ViewController.h
//  DelegateStockCode
//
//  Created by James Rochabrun on 14-06-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import <UIKit/UIKit.h>
//step 5 import the class h file
#import "TapImage.h"

@interface ViewController : UIViewController

//step 7 drag an outlet that will be the delegate object
@property (weak, nonatomic) IBOutlet TapImage *imageview;


@end

