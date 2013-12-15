//
//  CameraViewController.h
//  PhotoBomb
//
//  Created by Peter Zakin on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFPhotoEditorController.h"
#import <Parse/Parse.h>

@interface CameraViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate, AFPhotoEditorControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *shareButton;

@end
