//
//  _SCRadioCheckButton.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "_SCRadioCheckButton.h"

@implementation _SCRadioCheckButton

@synthesize selected = _selected;


-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUp];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

-(void)setUp
{
    // set the checkbox Image view
    [self addSubview:self.checkBoxImageView];
    
    // touch event
    [self addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    // set selected for style
    [self setSelected:self.selected];
}

-(UIImageView *)checkBoxImageView
{
    if (!_checkBoxImageView) {
        CGRect rect = CGRectMake(5, 4, 18, 18);
        _checkBoxImageView = [[UIImageView alloc] initWithFrame:rect];
        _checkBoxImageView.contentMode = UIViewContentModeCenter;
    }
    
    return _checkBoxImageView;
}


- (IBAction) buttonClicked: (id)sender
{
    if (self.selected) {
        self.selected = NO;
    }
    else{
        self.selected = YES;
    }
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if(self.highlighted) {
        [self setAlpha:0.7];
    }
    else {
        [self setAlpha:1.0];
    }
}

@end
