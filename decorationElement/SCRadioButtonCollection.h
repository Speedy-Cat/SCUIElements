//
//  RadioButtonCollection.h
//  decorationElement
//
//  Created by Adrian Ortuzar on 14/09/15.
//  Copyright (c) 2015 Adrian Ortuzar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCRadioButton.h"


@protocol SCRadioButtonCollectionDelegate;


@interface SCRadioButtonCollection : NSObject <SCRadioButtonDelegate>

@property (nonatomic, weak) id<SCRadioButtonCollectionDelegate> delegate;

@property (nonatomic, strong) NSSet *buttons;

-(id)initWithButtons:(NSSet*)buttons;

@end


@protocol SCRadioButtonCollectionDelegate <NSObject>

- (void)radioButtonCollectionDidSelected:(SCRadioButton*)button;

@end
