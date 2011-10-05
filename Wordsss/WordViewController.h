//
//  WordViewController.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-4.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordViewController : UIViewController
{
    NSArray* sectionViewControllers;
}

- (IBAction)booksSectionButtonDown:(id)sender;
- (IBAction)memsSectionButtonDown:(id)sender;
- (IBAction)listsSectionButtonDown:(id)sender;
- (IBAction)statisticsSectionButtonDown:(id)sender;

- (void)sectionButtonSelectedAtIndex:(NSInteger)index;

@end
