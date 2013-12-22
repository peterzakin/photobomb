//
//  HomeViewController.h
//  PhotoBomb
//
//  Created by Peter Zakin on 11/23/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PBLibraryViewController.h"

@interface HomeViewController : UIViewController
{
}
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@property PBLibraryViewController *lvc;

@end
