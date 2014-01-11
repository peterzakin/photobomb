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

NSInteger IMAGE_WIDTH = 320;
NSInteger IMAGE_HEIGHT = 320;

NSString *REUSE_IDENTIFIER = @"cell";

- (id)initWithImage:(UIImage *)image
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:REUSE_IDENTIFIER];

    if(self){
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, IMAGE_WIDTH, IMAGE_HEIGHT)];
    
        [self.contentView addSubview:self.imageView];
        [self applyImage:image];
        
    }
    return self;
}

- (void)applyImage:(UIImage *)image
{
    CGSize size = CGSizeMake(IMAGE_WIDTH, IMAGE_HEIGHT);
    
    image = [PBLibraryPhotoCell imageWithImage:image scaledToSize:size];
    [self.imageView setImage:image];
    
//    [self.imageView setCenter:CGPointMake(self.bounds.size.width/2, IMAGE_HEIGHT/2)];
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

- (void)applyAuthorPhoto:(UIImage *)authorPhoto username:(NSString *)username
{
    //resize photo
    authorPhoto = [PBLibraryPhotoCell imageWithImage:authorPhoto scaledToSize:CGSizeMake(40, 40)];
    
    //add 10 for padding
    UIView *authorView = [[UIView alloc] initWithFrame:CGRectMake(10, IMAGE_HEIGHT + 10, self.window.bounds.size.width, 50)];

    UIImageView *authorImageView = [[UIImageView alloc] initWithImage:authorPhoto];
    [authorView addSubview:authorImageView];
    
    //place the author name next to the author image
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(authorPhoto.size.width + 10, 10, IMAGE_WIDTH, 20)];
    [authorLabel setText:username];
    [authorLabel setFont:[UIFont fontWithName:@"helvetica" size:12]];
    [authorLabel setTextColor:[UIColor grayColor]];
    
    [authorView addSubview:authorLabel];

    
    [self.contentView addSubview:authorView];
}

@end
