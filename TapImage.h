//
//  TapImage.h
//  DelegateStockCode
//
//  Created by James Rochabrun on 14-06-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import <UIKit/UIKit.h>

//step 1 create the protocol and its public methods
@protocol TapImageDelegate
- (void)didTapImage;

@end

@interface TapImage : UIImageView
//step 2 create the delegate property
@property id<TapImageDelegate>delegate;
-(instancetype)initWithCoder:(NSCoder *)aDecoder;

@end
