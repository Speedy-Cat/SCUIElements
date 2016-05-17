//
//  SCCheckBox.h
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_SCRadioCheckButton.h"

@protocol SCCheckBoxButtonDelegate;

@interface SCCheckBoxButton : _SCRadioCheckButton

@property (nonatomic, weak) id<SCCheckBoxButtonDelegate> delegate;

@end

@protocol SCCheckBoxButtonDelegate <NSObject>

- (void)checkBoxButtonDidSelected:(SCCheckBoxButton*)button;

@end
