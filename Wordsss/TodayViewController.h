//
//  TodayViewController.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-2.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RKNavigationController.h"
#import "RKNavigationControllerDelegate.h"

@interface TodayViewController : UIViewController <RKNavigationControllerDelegate>

- (IBAction)wordDetailSelected:(id)sender;

@end
