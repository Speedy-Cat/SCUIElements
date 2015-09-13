//
//  SCCheckBox.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "SCCheckBox.h"

@interface SCCheckBox ()


@property (nonatomic) BOOL isChecked;


@end

@implementation SCCheckBox

-(instancetype)initWithPosition:(CGPoint)position
{
    self = [super initWithFrame:CGRectMake(50, 200, 200, 26)];
    if (self) {
        
    
        // images for diferent states size
        CGRect rect = CGRectMake(0, 0, 16, 16);
        
        //unCheckImg
        UIGraphicsBeginImageContext(rect.size);
                CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [[UIColor orangeColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *unCheckImg = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        // checkImg
        UIGraphicsBeginImageContext(rect.size);
        CGContextSetFillColorWithColor(context, [[UIColor yellowColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *checkImg = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        //hileghted
        UIGraphicsBeginImageContext(rect.size);
        CGContextSetFillColorWithColor(context, [[UIColor purpleColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *hilighted = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        // set images for diferent states
        [self setImage:unCheckImg forState:UIControlStateNormal];
        [self setImage:hilighted forState:UIControlStateHighlighted];
        [self setImage:checkImg forState:UIControlStateSelected];
        
        // title
        [self setTitle:@"Female" forState:UIControlStateNormal];
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;

        
        // touch event
        [self addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        // backgroudnd color
        self.backgroundColor = [UIColor blackColor];
        
        
        [self buttonClicked:nil];
    }
    return self;
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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
