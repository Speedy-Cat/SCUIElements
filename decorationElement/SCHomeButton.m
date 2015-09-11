//
//  SCHomeButton.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCHomeButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation SCHomeButton

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // background color
        self.backgroundColor = [UIColor colorWithRed:39.f/255 green:63.f/255 blue:85.f/255 alpha:0.85];
        
        // set title
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        self.titleLabel.numberOfLines = 2;
        [self.titleLabel setTextAlignment: NSTextAlignmentCenter];
        UIEdgeInsets edge = UIEdgeInsetsMake(0, 0, 0, 27);
        [self setTitleEdgeInsets:edge];
        
        //shadow
        // distance 3
        // spread 9
        // size 16
        self.layer.shadowOffset = CGSizeMake(1, 1);
        self.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.layer.shadowRadius = 4.0f;
        self.layer.shadowOpacity = 0.80f;
        self.layer.shadowPath = [[UIBezierPath bezierPathWithRect:self.layer.bounds] CGPath];
        
        // rounde corners
        self.layer.cornerRadius = 8;
        
        // right arrow image
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(145-27, 0, 27, 65)];
        imageView.backgroundColor = [UIColor colorWithRed:255.f green:255.f blue:255.f alpha:0.15];
        imageView.image = [UIImage imageNamed:@"Button_Arrow"];
        // round corner for right arrow image
        UIBezierPath *maskPath;
        maskPath = [UIBezierPath bezierPathWithRoundedRect:imageView.bounds
                                         byRoundingCorners:(UIRectCornerTopRight|UIRectCornerBottomRight)
                                               cornerRadii:CGSizeMake(8.0, 8.0)];
        
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.bounds;
        maskLayer.path = maskPath.CGPath;
        imageView.layer.mask = maskLayer;
        
        // add image
        [self addSubview:imageView];
        
        [self addTarget:nil action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

// In your UIButton's subclass
- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if(self.highlighted) {
        [self setAlpha:0.9];
    }
    else {
        [self setAlpha:1.0];
    }
}

-(void)touch:(id)sender{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
