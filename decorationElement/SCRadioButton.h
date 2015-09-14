//
//  SCRadioButton.h
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_SCRadioCheckButton.h"

@protocol SCRadioButtonDelegate;

@interface SCRadioButton : _SCRadioCheckButton

@property (nonatomic, weak) id<SCRadioButtonDelegate> delegate;

@end

@protocol SCRadioButtonDelegate <NSObject>

- (void)radioButtonDidSelected:(SCRadioButton*)button;
@end