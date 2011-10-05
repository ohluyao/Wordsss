//
//  RkNavigationController.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-4.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKNavigationController : UINavigationController
{
    UIView *customNavigationbBarView;
}

@property (nonatomic, retain) IBOutlet UIButton* leftButton;
@property (nonatomic, retain) IBOutlet UILabel* titleLabel;
@property (nonatomic, retain) IBOutlet UIButton* rightButton;

- (void)hideBuiltinNavigationBar;
- (void)showCustomNavigationBar;

@end
