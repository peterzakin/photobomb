//
//  EditViewController.h
//  PhotoBomb
//
//  Created by Alexander Pease on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DAScratchPadView.h"

@interface EditViewController : UIViewController
@property (strong, retain) UIImage *originalImage;
@property (strong, retain) IBOutlet UIButton *finishButton;
@property (strong, retain) DAScratchPadView *scratchpad;

- (id)initWithImage:(UIImage *)image;

@end
