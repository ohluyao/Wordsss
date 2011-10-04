//
//  RKNavigationController.m
//  Wordsss
//
//  Created by RenKelvin on 11-10-4.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import "RKNavigationController.h"

@implementation RKNavigationController

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
    //[self hideBuiltinNavigationBar];
    [self showCustomNavigationBar];
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

#pragma - Custom

//
- (void)hideBuiltinNavigationBar{
	for(UIView *view in self.view.subviews){
		if([view isKindOfClass:[UINavigationBar class]]){
			view.hidden = YES;
			break;
		}
	}
}

// 
- (void)showCustomNavigationBar{
    
    //
    CGRect tabBarFrame = CGRectMake(0, 20, 320, 44);
	customNavigationbBarView = [[UIView alloc] initWithFrame:tabBarFrame];
	UIImageView* backGroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
	backGroundImageView.image = [UIImage imageNamed:@"topbar_bg.png"];
	[customNavigationbBarView addSubview:backGroundImageView];

	[self.view addSubview:customNavigationbBarView];
}

@end
