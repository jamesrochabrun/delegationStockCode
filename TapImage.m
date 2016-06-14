//
//  TapImage.m
//  DelegateStockCode
//
//  Created by James Rochabrun on 14-06-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "TapImage.h"

@interface TapImage()<UIGestureRecognizerDelegate>

@end

@implementation TapImage

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        self =[super initWithCoder:aDecoder];
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tappedGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        self.gestureRecognizers = @[tappedGesture];
        for (UIGestureRecognizer *recognizer in self.gestureRecognizers) {
            recognizer.delegate = self;
        }
    }
    return self;
}

//step 3 drag an ibaction or use perform selector.

-(void)handleTap:(UITapGestureRecognizer *)gestureRecognizer {
    
    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized ||
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        
        //step 4 define a delegate
        [self.delegate didTapImage];
    }
}


@end
