//
//  SCCheckBox.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCCheckBox.h"

@implementation SCCheckBox

-(instancetype)initWithPosition:(CGPoint)position
{
    self = [super initWithFrame:CGRectMake(50, 200, 200, 26)];
    if (self) {
        
        
        // checkbox image
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 26/2 - 16/2, 16, 16)];
        imageView.backgroundColor = [UIColor orangeColor];
        [self addSubview:imageView];
        
        // title
                [self setTitle:@"Female" forState:UIControlStateNormal];
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        UIEdgeInsets edge = UIEdgeInsetsMake(0, 26, 0, 0);
        [self setTitleEdgeInsets:edge];
        

        
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
