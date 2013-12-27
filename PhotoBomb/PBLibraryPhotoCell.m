//
//  PBLibraryPhotoCell.m
//  PhotoBomb
//
//  Created by Peter Zakin on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "PBLibraryPhotoCell.h"

@implementation PBLibraryPhotoCell

@synthesize imageView;

NSInteger IMAGE_WIDTH = 300;
NSInteger IMAGE_HEIGHT = 300;

NSString *REUSE_IDENTIFIER = @"cell";

- (id)init
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:REUSE_IDENTIFIER];
    if(self){
    
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, IMAGE_WIDTH, IMAGE_HEIGHT)];
    
        [self.contentView addSubview:self.imageView];
        
    }
    return self;
}

- (void)applyImage:(UIImage *)image
{
    NSLog(@"applied image");
    CGSize size = CGSizeMake(300, 300);
    
    image = [PBLibraryPhotoCell imageWithImage:image scaledToSize:size];
    [self.imageView setImage:image];
    
    [self.imageView setCenter:CGPointMake(self.bounds.size.width/2, 150)];
} 
 
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
//    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (UIImage*)imageWithImage:(UIImage*)image
              scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
