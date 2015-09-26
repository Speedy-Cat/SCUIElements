//
//  SCRadioButton.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCRadioButton.h"

@interface SCRadioButton ()


@end

@implementation SCRadioButton

@synthesize selected = _selected;
@synthesize checkBoxImageView = _checkBoxImageView;


-(void)setUp
{
    [super setUp];
    
    [self setTitleColor:[UIColor colorWithRed:217/255.0 green:217/255.0 blue:217/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    // title
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    // insets
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
    

}

-(UIImageView *)checkBoxImageView
{
    _checkBoxImageView = [super checkBoxImageView];
    _checkBoxImageView.layer.cornerRadius = 9.0;
    _checkBoxImageView.layer.masksToBounds = YES;

    return _checkBoxImageView;
}


- (IBAction) buttonClicked: (id)sender
{
    [super buttonClicked:nil];
    
    if ([self.delegate respondsToSelector:@selector(radioButtonDidSelected:)]) {
        [self.delegate radioButtonDidSelected:self];
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

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    if(self.highlighted) {
        
        if (!self.selected) {
            self.checkBoxImageView.layer.borderColor = [UIColor grayColor].CGColor;
            self.checkBoxImageView.backgroundColor = [UIColor whiteColor];
            self.checkBoxImageView.layer.borderWidth = 4.0f;
        }
        else{
//            [self.checkBoxImageView setImage:self.unCheckImg];
        }
        
    }
    else {
        
        if (!self.selected) {
                    self.checkBoxImageView.layer.borderWidth = 0.0f;
                                self.checkBoxImageView.backgroundColor = [UIColor grayColor];
            //self.checkBoxImageView.backgroundColor = [UIColor grayColor];
            
        }
        else{
    //        [self.checkBoxImageView setImage:self.checkImg];
        }
        
    }
}

@end
