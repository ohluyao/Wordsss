//
//  WordViewController.m
//  Wordsss
//
//  Created by RenKelvin on 11-10-4.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import "WordViewController.h"

@implementation WordViewController

@synthesize sectionViewControllers;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView
 {
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma - -

- (IBAction)selectSection:(UIButton*)button
{
    NSLog(@"%d", button.tag);
    [self selectSectionViewControllerAtIndex:button.tag];
}

- (void)selectSectionViewControllerAtIndex:(NSInteger)index
{
    UIView* sectionView = [[self.sectionViewControllers objectAtIndex:index] view];
    [self.view addSubview:sectionView];
}

- (id)initSectionViewControllers
{
    WordBooksViewController* wordBooksViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordBooksViewController"];
    [[wordBooksViewController view] setFrame:CGRectMake(0, 47, 320, 320)];

    WordMemsViewController* wordMemsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordMemsViewController"];
    [[wordMemsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];

    WordListsViewController* wordListsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordListsViewController"];
    [[wordListsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];

    WordStatisticsViewController* wordStatisticsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordStatisticsViewController"];
    [[wordStatisticsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];

    NSMutableArray* tempViewControllersArray = [NSMutableArray arrayWithCapacity:4];
    [tempViewControllersArray addObject:wordBooksViewController];
    [tempViewControllersArray addObject:wordMemsViewController];
    [tempViewControllersArray addObject:wordListsViewController];
    [tempViewControllersArray addObject:wordStatisticsViewController];
    
    [self setSectionViewControllers:tempViewControllersArray];
    
    return self;
}

@end
