//
//  ViewController.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "ViewController.h"
#import "SCHomeButton.h"
#import "SCCheckBoxButton.h"
#import "SCRadioButton.h"
#import "SCRadioButtonCollection.h"
#import "HotPointView.h"

@interface ViewController ()

@property (nonatomic, strong) SCRadioButtonCollection *radioButtonCollection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    SCHomeButton *button = [[SCHomeButton alloc] initWithFrame:CGRectMake(50, 50, 144, 64)];
    [button setTitle:@"MY BUTTON TRES BUTTON" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    SCCheckBoxButton *checkbox = [[SCCheckBoxButton alloc] initWithFrame:CGRectMake(50, 200, 200, 26)];
    checkbox.highlightColor = [UIColor greenColor];
    [self.view addSubview:checkbox];
    
    SCRadioButton *radioButton = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 250, 200, 26)];
    radioButton.highlightColor = [UIColor blueColor];
    [radioButton setTitle:@"Male" forState:UIControlStateNormal];
    [self.view addSubview:radioButton];
    
    SCRadioButton *radioButton1 = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 300, 200, 26)];
    radioButton1.highlightColor = [UIColor purpleColor];
    [radioButton1 setTitle:@"Female" forState:UIControlStateNormal];
    [self.view addSubview:radioButton1];
    
    
    NSSet *buttons = [[NSSet alloc] initWithArray:@[radioButton1, radioButton]];
    self.radioButtonCollection = [[SCRadioButtonCollection alloc] initWithButtons:buttons];
    
    // hotView
    HotPointView *hotpoint = [[HotPointView alloc] initWithFrame:CGRectMake(100, 450, 50, 50)];
    [hotpoint startAllAnimations:nil];
    [self.view addSubview:hotpoint];
    
    HotPointView *hotpoint1 = [[HotPointView alloc] initWithFrame:CGRectMake(30, 450, 30, 30)];
    [hotpoint1 startAllAnimations:nil];
    [self.view addSubview:hotpoint1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
