//
//  HomeViewController.m
//  PhotoBomb
//
//  Created by Peter Zakin on 11/23/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "HomeViewController.h"
#import "CameraViewController.h"
#import <Parse/Parse.h>

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
    [self.loginButton addTarget:self action:@selector(loginButtonTouchHandler:) forControlEvents:UIControlEventTouchDown];
    
    // Do any additional setup after loading the view from its nib.
}

/*
- (void) loginUser
{
    // Login
    PFUser *currentUser = [PFUser currentUser];
    if (!currentUser) {
        // Dummy username and password
        PFUser *user = [PFUser user];
        user.username = @"test";
        user.password = @"password";
        
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (error) {
                // Assume the error is because the user already existed.
                [PFUser logInWithUsername:@"test" password:@"password"];
            }
        }];
    }

    
    
    CameraViewController *cvc = [[CameraViewController alloc] init];
  
    [[self navigationController] pushViewController:cvc animated:YES];
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - FB Stuff
- (IBAction)loginButtonTouchHandler:(id)sender  {
    // The permissions requested from the user
    NSArray *permissionsArray = @[ @"user_about_me", @"user_relationships", @"user_birthday", @"user_location", @"publish_actions"];
    
    // Login PFUser using Facebook
    [PFFacebookUtils logInWithPermissions:permissionsArray block:^(PFUser *user, NSError *error) {
        
        if (!user) {
            if (!error) {
                NSLog(@"Uh oh. The user cancelled the Facebook login.");
            } else {
                NSLog(@"Uh oh. An error occurred: %@", error);
            }
        } else if (user.isNew) {
            NSLog(@"User with facebook signed up and logged in!");
            CameraViewController *cvc = [[CameraViewController alloc] init];

            [[self navigationController] pushViewController:cvc animated:YES];
        } else {
            NSLog(@"User with facebook logged in!");
            CameraViewController *cvc = [[CameraViewController alloc] init];
            
            [[self navigationController] pushViewController:cvc animated:YES];
        }
    }];
}

@end
