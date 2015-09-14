//
//  SCCheckBox.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCCheckBoxButton.h"

@interface SCCheckBoxButton ()

@property (nonatomic) BOOL isChecked;
@property (nonatomic, strong) UIImageView *checkBoxImageView;
@property (nonatomic, strong) UIImage *checkImg;
@property (nonatomic, strong) UIImage *unCheckImg;

@end

@implementation SCCheckBoxButton

@synthesize selected = _selected;

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setTitleColor:[UIColor colorWithRed:217/255.0 green:217/255.0 blue:217/255.0 alpha:1.0] forState:UIControlStateNormal];

        // set the checkbox Image view
        [self addSubview:self.checkBoxImageView];
        
        // images
        self.checkImg = [UIImage imageNamed:@"Checkmark"];
        
        // title
        [self setTitle:@"Female" forState:UIControlStateNormal];
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        // insets
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 0)];

        // touch event
        [self addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        // set selected for style
        [self setSelected:self.selected];
    }
    return self;
}

-(UIImageView *)checkBoxImageView
{
    if (!_checkBoxImageView) {
        CGRect rect = CGRectMake(5, 4, 18, 18);
        _checkBoxImageView = [[UIImageView alloc] initWithFrame:rect];
        _checkBoxImageView.contentMode = UIViewContentModeCenter;
        _checkBoxImageView.layer.cornerRadius = 3.0;
        _checkBoxImageView.layer.masksToBounds = YES;
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

-(void)setSelected:(BOOL)selected
{
    if (selected) {
        [self.checkBoxImageView setImage:self.checkImg];
        self.checkBoxImageView.backgroundColor = [UIColor orangeColor];
    }else{
        [self.checkBoxImageView setImage:nil];
        self.checkBoxImageView.backgroundColor = [UIColor grayColor];
    }
    _selected = selected;
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
