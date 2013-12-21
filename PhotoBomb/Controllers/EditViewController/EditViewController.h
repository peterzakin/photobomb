//
//  EditViewController.h
//  PhotoBomb
//
//  Created by Alexander Pease on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController <UINavigationControllerDelegate> {
    
}
@property (strong, nonatomic) UIImage *image;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end
