//
//  RootViewController.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-3.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITabBarController
{
	int currentSelectedIndex;
        
	UIView *customTabBarView;
	NSMutableArray *buttons;
}

@property (nonatomic, assign) int currentSelectedIndex;

@property (nonatomic, retain) NSMutableArray *buttons;

- (void)hideBuiltinTabBar;
- (void)showCustomTabBar;
- (void)selectedTab:(UIButton *)button;

@end
