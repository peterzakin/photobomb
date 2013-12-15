//
//  ShareViewController.m
//  PhotoBomb
//
//  Created by Alexander Pease on 12/15/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "ShareViewController.h"
#import "CameraViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.shareButton addTarget:self action:@selector(shareButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView setImage:self.image];
    /*
     [self.shareButton setFrame:CGRectMake(0, self.view.bounds.size.height - self.shareButton.bounds.size.height, self.shareButton.bounds.size.width, self.shareButton.bounds.size.width)];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)shareButtonPressed
{
    NSLog(@"shared");
    [[self navigationController] popViewControllerAnimated:YES];
    CameraViewController *cvc = [[CameraViewController alloc] init];
    [[self navigationController] pushViewController:cvc animated:YES];
}


@end
