//
//  TodayViewController.m
//  Wordsss
//
//  Created by RenKelvin on 11-10-2.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import "TodayViewController.h"
#import "WordViewController.h"

@implementation TodayViewController

@synthesize wordSliderImageView;
@synthesize wordSliderTouchArea;

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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    [[self navigationController] setDelegate:self];
    
    //
    UIPanGestureRecognizer* recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(wordSliderPanning:)];
    [[self wordSliderTouchArea] addGestureRecognizer:recognizer];
}

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

#pragma -

- (IBAction)wordDetailSelected:(id)sender
{
    WordViewController* wordViewController = [[self.storyboard instantiateViewControllerWithIdentifier:@"WordViewController"] initSectionViewControllers];
    
    [[self navigationController] pushViewController:wordViewController animated:YES];
}

#pragma -

- (void)wordSliderPanning:(UIPanGestureRecognizer*)recognizer
{
    CGPoint translation = [recognizer translationInView:self.view];
    CGRect rect = [self.wordSliderImageView frame];
    
    if (recognizer.state == UIGestureRecognizerStateChanged)
    {
        rect.origin.x += translation.x;
        if(rect.origin.x > 0 && rect.origin.x < 84)
            [self.wordSliderImageView setFrame:rect];
        
        [recognizer setTranslation:CGPointZero inView:self.view];
    }
    else if(recognizer.state == UIGestureRecognizerStateEnded) 
    {
        if(rect.origin.x < 21)
        {
            rect.origin.x = 0;
        }
        else if(rect.origin.x > 63)
        {
            rect.origin.x = 84;
        }
        else 
        {
            rect.origin.x = 42;
        }
        [self.wordSliderImageView setFrame:rect];
    }
}

#pragma - RKNavigationControllerDelegate

- (void)initNavigationBar:(RKNavigationController*)navigationController
{    
    [[self navigationController] setDelegate:self];
    
    [[navigationController titleLabel] setText:@""];
    [[navigationController titleImageView] setImage:[UIImage imageNamed:@"title_small.png"]];
    [[navigationController leftButton] setImage:nil forState:UIControlStateNormal];
    [[navigationController rightButton] setImage:[UIImage imageNamed:@"button_info.png"] forState:UIControlStateNormal];
}

- (void)navigationBarLeftButtonDown
{

}

- (void)navigationBarRightButtonDown
{

}

@end
