//
//  ViewController.m
//  decorationElement
//
//  Created by Adrian Ortuzar on 11/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import "ViewController.h"
#import "SCHomeButton.h"
#import "SCCheckBox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SCHomeButton *button = [[SCHomeButton alloc] initWithFrame:CGRectMake(50, 50, 144, 64)];
    [button setTitle:@"MY BUTTON TRES BUTTON" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    SCCheckBox *checkbox = [[SCCheckBox alloc] initWithPosition:CGPointMake(50,200)];
    [self.view addSubview:checkbox];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
