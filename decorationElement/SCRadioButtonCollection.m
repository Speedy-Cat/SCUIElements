//
//  RadioButtonCollection.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCRadioButtonCollection.h"

@implementation SCRadioButtonCollection

-(id)initWithButtons:(NSSet*)buttons
{
    self = [super init];
    if (self) {
        self.buttons = buttons;
        

        for(SCRadioButton *button in buttons) {
            button.delegate = self;
        }
    }
    return self;
}

- (void)radioButtonDidSelected:(SCRadioButton*)buttonSelected
{
    for(SCRadioButton *button in self.buttons) {
        if (button != buttonSelected) {
            button.selected = NO;
        }else{
            button.selected = YES;
        }
    }
}

@end
