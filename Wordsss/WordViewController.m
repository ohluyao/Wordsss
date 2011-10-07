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
@synthesize currentSectionView;

@synthesize wordBooksSectionButton;
@synthesize wordRelationsSectionButton;
@synthesize wordMemsSectionButton;
@synthesize wordStatisticsSectionButton;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    [self initNavigationBar:(RKNavigationController*)[self navigationController]];

    //
    [self selectSectionWithIndex:0];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma - -

- (IBAction)selectSectionButtonDown:(UIButton*)button
{
    [self selectSectionWithIndex:button.tag];
}

- (void)selectSectionWithIndex:(NSInteger)index
{
    // Change buttons
    [self.wordBooksSectionButton setSelected:NO];
    [self.wordRelationsSectionButton setSelected:NO];
    [self.wordMemsSectionButton setSelected:NO];
    [self.wordStatisticsSectionButton setSelected:NO];
    switch (index) {
        case 0:
            [self.wordBooksSectionButton setSelected:YES];
            break;
        case 1:
            [self.wordRelationsSectionButton setSelected:YES];
            break;
        case 2:
            [self.wordMemsSectionButton setSelected:YES];
            break;
        case 3:
            [self.wordStatisticsSectionButton setSelected:YES];
            break;            
        default:
            break;
    }
    
    // Remove old view
    [self.currentSectionView removeFromSuperview];
    
    // Add new view
    UIView* sectionView = [[self.sectionViewControllers objectAtIndex:index] view];
    self.currentSectionView = sectionView;
    [self.view addSubview:sectionView];
}

- (id)initSectionViewControllers
{
    WordBooksViewController* wordBooksViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordBooksViewController"];
    [[wordBooksViewController view] setFrame:CGRectMake(0, 47, 320, 320)];
    
    WordRelationsViewController* wordRelationsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordRelationsViewController"];
    [[wordRelationsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];
    
    WordMemsViewController* wordMemsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordMemsViewController"];
    [[wordMemsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];
    
    WordStatisticsViewController* wordStatisticsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WordStatisticsViewController"];
    [[wordStatisticsViewController view] setFrame:CGRectMake(0, 47, 320, 320)];
    
    NSMutableArray* tempViewControllersArray = [NSMutableArray arrayWithCapacity:4];
    [tempViewControllersArray addObject:wordBooksViewController];
    [tempViewControllersArray addObject:wordRelationsViewController];
    [tempViewControllersArray addObject:wordMemsViewController];
    [tempViewControllersArray addObject:wordStatisticsViewController];
    
    [self setSectionViewControllers:tempViewControllersArray];
    
    return self;
}

#pragma - RKNavigationControllerDelegate

- (void)initNavigationBar:(RKNavigationController*)navigationController
{
    [[navigationController titleLabel] setText:@"apple"];
    [[navigationController titleImageView] setImage:nil];
    [[navigationController leftButton] setImage:[UIImage imageNamed:@"button_back.png"] forState:UIControlStateNormal];
    [[navigationController rightButton] setImage:[UIImage imageNamed:@"info_gre.png"] forState:UIControlStateNormal];
}

- (void)navigationBarLeftButtonDown
{
    [[self navigationController] popViewControllerAnimated:YES];
    [[[self navigationController] topViewController] performSelector:@selector(initNavigationBar) withObject:[[self navigationController] topViewController]];
}

- (void)navigationBarRightButtonDown
{
    
}

@end
