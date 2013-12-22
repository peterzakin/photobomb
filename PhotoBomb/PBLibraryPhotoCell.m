//
//  PBLibraryPhotoCell.m
//  PhotoBomb
//
//  Created by Peter Zakin on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "PBLibraryPhotoCell.h"

@implementation PBLibraryPhotoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor redColor]];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
