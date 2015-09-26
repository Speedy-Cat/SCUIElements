//
//  SCCheckBox.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCCheckBoxButton.h"

@interface SCCheckBoxButton ()

@property (nonatomic, strong) UIImage *checkImg;
@property (nonatomic, strong) UIImage *unCheckImg;

@end

@implementation SCCheckBoxButton

@synthesize selected = _selected;
@synthesize checkBoxImageView = _checkBoxImageView;

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
    [super setUp];
    
    [self setTitleColor:[UIColor colorWithRed:217/255.0 green:217/255.0 blue:217/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    // images
    self.checkImg = [UIImage imageNamed:@"Checkmark"];
    
    // title
    [self setTitle:@"Female" forState:UIControlStateNormal];
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    // insets
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
}


-(UIImageView *)checkBoxImageView
{
    _checkBoxImageView = [super checkBoxImageView];
    _checkBoxImageView.layer.cornerRadius = 3.0;
    _checkBoxImageView.layer.masksToBounds = YES;
    
    return _checkBoxImageView;
}


-(void)setSelected:(BOOL)selected
{
    if (selected) {
        [self.checkBoxImageView setImage:self.checkImg];
        self.checkBoxImageView.backgroundColor = [UIColor orangeColor];
    }else{
        [self.checkBoxImageView setImage:self.unCheckImg];
        self.checkBoxImageView.backgroundColor = [UIColor grayColor];
    }
    _selected = selected;
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if(self.highlighted) {
        
        if (!self.selected) {
            [self.checkBoxImageView setImage:self.checkImg];
        }
        else{
            [self.checkBoxImageView setImage:self.unCheckImg];
        }

    }
    else {
        
        if (!self.selected) {
            [self.checkBoxImageView setImage:self.unCheckImg];
        }
        else{
            [self.checkBoxImageView setImage:self.checkImg];
        }

    }
}


@end
