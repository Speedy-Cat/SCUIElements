//
//  RadioButtonCollection.h
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCRadioButton.h"

@interface SCRadioButtonCollection : NSObject <SCRadioButtonDelegate>

@property (nonatomic, strong) NSSet *buttons;

-(id)initWithButtons:(NSSet*)buttons;

@end
