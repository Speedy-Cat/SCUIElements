//
//  _SCRadioCheckButton.h
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _SCRadioCheckButton : UIButton

@property (nonatomic, strong) UIImageView *checkBoxImageView;

-(void)setUp;
- (IBAction) buttonClicked:(id)sender;

@end
