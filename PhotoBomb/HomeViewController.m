//
//  HomeViewController.m
//  PhotoBomb
//
//  Created by Peter Zakin on 11/23/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "HomeViewController.h"
#import "CameraViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    [self.navigationController setNavigationBarHidden:YES];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    [self.loginButton setTitle:@"login" forState:UIControlStateNormal];
    [self.loginButton addTarget:self action:@selector(loginUser) forControlEvents:UIControlEventTouchDown];
    
                                                     
    // Do any additional setup after loading the view from its nib.
}

- (void) loginUser
{
    CameraViewController *cvc = [[CameraViewController alloc] init];
  
    [[self navigationController] pushViewController:cvc animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
