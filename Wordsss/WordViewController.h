//
//  WordViewController.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-4.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WordBooksViewController.h"
#import "WordMemsViewController.h"
#import "WordListsViewController.h"
#import "WordStatisticsViewController.h"

@interface WordViewController : UIViewController

@property (nonatomic, retain) NSArray* sectionViewControllers;

- (id)initSectionViewControllers;

- (IBAction)selectSection:(UIButton*)button;
- (void)selectSectionViewControllerAtIndex:(NSInteger)index;

@end
