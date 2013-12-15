//
//  ShareViewController.h
//  PhotoBomb
//
//  Created by Alexander Pease on 12/15/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShareViewController : UIViewController
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *shareButton;

-(IBAction)shareButtonPressed;

@end
