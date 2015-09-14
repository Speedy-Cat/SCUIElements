//
//  SCRadioButton.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCRadioButton.h"

@interface SCRadioButton ()


@property (nonatomic) BOOL isChecked;
@property (nonatomic, strong) UIImageView *checkBoxImageView;
@property (nonatomic, strong) UIImage *checkImg;
@property (nonatomic, strong) UIImage *unCheckImg;


@end

@implementation SCRadioButton

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
        
        //
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
        _checkBoxImageView.layer.cornerRadius = 9.0;
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
        self.checkBoxImageView.layer.borderColor = [UIColor orangeColor].CGColor;
        self.checkBoxImageView.backgroundColor = [UIColor whiteColor];
        self.checkBoxImageView.layer.borderWidth = 4.0f;
    }else{
        [self.checkBoxImageView setImage:nil];
        self.checkBoxImageView.backgroundColor = [UIColor grayColor];
        self.checkBoxImageView.layer.borderWidth = 0.0f;
    }
    _selected = selected;
}


@end
