//
//  CustomView.m
//
//  Code generated using QuartzCode 1.21 on 30/09/15.
//  www.quartzcodeapp.com
//

#import "HotPointView.h"
#import "QCMethod.h"


@interface HotPointView ()

@property (nonatomic, strong) CAShapeLayer *HotspotRipple02;


@end

@implementation HotPointView

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupLayers];
	}
	return self;
}


- (void)setupLayers{
    float diameter;
    float center;
    
    CAShapeLayer * HotspotRipple02 = [CAShapeLayer layer];
    diameter = CGRectGetWidth(self.frame);
    center = CGRectGetWidth(self.frame)/2 - diameter/2;
    HotspotRipple02.frame         = CGRectMake(center, center, diameter, diameter);
    HotspotRipple02.fillColor     = nil;
    HotspotRipple02.strokeColor   = [UIColor whiteColor].CGColor;
    HotspotRipple02.lineWidth     = 1;
    HotspotRipple02.path          = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, diameter, diameter)].CGPath;
    self.HotspotRipple02 = HotspotRipple02;

    CAShapeLayer * HotspotOuter = [CAShapeLayer layer];
    diameter = CGRectGetWidth(self.frame)/2;
    center = CGRectGetWidth(self.frame)/2 - diameter/2;
    HotspotOuter.frame     = CGRectMake(center, center, diameter, diameter);
    HotspotOuter.fillColor = [UIColor colorWithRed:1 green: 1 blue:1 alpha:0.7].CGColor;
    HotspotOuter.lineWidth = 0;
    HotspotOuter.path      = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, diameter, diameter)].CGPath;
    
    CAShapeLayer * HotspotInner = [CAShapeLayer layer];
    diameter = CGRectGetWidth(self.frame)/3;
    center = CGRectGetWidth(self.frame)/2 - diameter/2;
    HotspotInner.frame     = CGRectMake(center, center, diameter, diameter);
    HotspotInner.fillColor = [UIColor colorWithRed:1 green: 0.396 blue:0.00392 alpha:1].CGColor;
    HotspotInner.lineWidth = 0;
    HotspotInner.path      = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, diameter, diameter)].CGPath;
    
    [self.layer addSublayer:HotspotRipple02];
    [self.layer addSublayer:HotspotOuter];
    [self.layer addSublayer:HotspotInner];
    
}


- (IBAction)startAllAnimations:(id)sender{
	
	[self.HotspotRipple02 addAnimation:[self HotspotRippleAnimation] forKey:@"HotspotRippleAnimation"];
	[QCMethod updateValueFromAnimationsForLayers:@[self.HotspotRipple02]];
}

- (CAAnimationGroup*)HotspotRippleAnimation{
	CABasicAnimation * transformAnim = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
	transformAnim.fromValue          = @(0);
	transformAnim.toValue            = @(1);
	transformAnim.duration           = 1;
	transformAnim.timingFunction     = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
	transformAnim.repeatCount        = INFINITY;
	
	CAKeyframeAnimation * opacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.values                = @[@0.9, @0.9, @0.9, @0];
	opacityAnim.keyTimes              = @[@0, @0.0988, @0.616, @1];
	opacityAnim.duration              = 1;
	opacityAnim.repeatCount           = INFINITY;
	
	CAAnimationGroup *ovalAnimGroup   = [CAAnimationGroup animation];
	ovalAnimGroup.animations          = @[transformAnim, opacityAnim];
	[ovalAnimGroup.animations setValue:kCAFillModeBoth forKeyPath:@"fillMode"];
	ovalAnimGroup.fillMode            = kCAFillModeForwards;
	ovalAnimGroup.removedOnCompletion = NO;
	ovalAnimGroup.duration = [QCMethod maxDurationFromAnimations:ovalAnimGroup.animations];
	
	
	return ovalAnimGroup;
}



@end