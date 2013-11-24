//
//  CameraViewController.h
//  PhotoBomb
//
//  Created by Peter Zakin on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
