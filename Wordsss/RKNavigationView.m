//
//  RKNavigationView.m
//  Wordsss
//
//  Created by Ren Kelvin on 10/5/11.
//  Copyright 2011 Ren Inc. All rights reserved.
//

#import "RKNavigationView.h"

@implementation RKNavigationView

@synthesize leftButton;
@synthesize titleLabel;
@synthesize rightButton;

- (id)initWithFrame:(CGRect)frame
{
    // self = [super initWithFrame:frame];
    // Initialization
    NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"RKNavigationView" owner:self options:nil];
    self = [[nibs lastObject] initWithFrame:frame];
    
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
