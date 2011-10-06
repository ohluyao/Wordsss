//
//  RKNavigationControllerDelegate.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-6.
//  Copyright 2011年 Ren Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RKNavigationControllerDelegate <NSObject>

- (void)navigationBarLeftButtonDown;
- (void)navigationBarRightButtonDown;

- (void)initNavigationBar:(UILabel*)titleLabel titleImageViewImage:(UIImage*)image leftButton:(UIButton*)leftButton rightButton:(UIButton*)rigntButton;

@end
