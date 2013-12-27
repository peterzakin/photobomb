//
//  PBLibraryPhotoCell.h
//  PhotoBomb
//
//  Created by Peter Zakin on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PBLibraryPhotoCell : UITableViewCell

@property (nonatomic, strong) UIImageView *imageView;

- (void)applyImage:(UIImage *)image;

@end
