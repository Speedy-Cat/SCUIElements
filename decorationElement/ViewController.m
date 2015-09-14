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

@interface ViewController ()

@property (nonatomic, strong) SCRadioButtonCollection *radioButtonCollection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SCHomeButton *button = [[SCHomeButton alloc] initWithFrame:CGRectMake(50, 50, 144, 64)];
    [button setTitle:@"MY BUTTON TRES BUTTON" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    SCCheckBoxButton *checkbox = [[SCCheckBoxButton alloc] initWithFrame:CGRectMake(50, 200, 200, 26)];
    [self.view addSubview:checkbox];
    
    SCRadioButton *radioButton = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 250, 200, 26)];
    [radioButton setTitle:@"Male" forState:UIControlStateNormal];
    [self.view addSubview:radioButton];
    
    SCRadioButton *radioButton1 = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 300, 200, 26)];
    [radioButton1 setTitle:@"Female" forState:UIControlStateNormal];
    [self.view addSubview:radioButton1];
    
    SCRadioButton *radioButton2 = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 350, 200, 26)];
    [radioButton2 setTitle:@"Trans" forState:UIControlStateNormal];
    [self.view addSubview:radioButton2];
    
    NSSet *buttons = [[NSSet alloc] initWithArray:@[radioButton1, radioButton2, radioButton]];
    self.radioButtonCollection = [[SCRadioButtonCollection alloc] initWithButtons:buttons];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
