//
//  PBImage.m
//  PhotoBomb
//
//  Created by Alexander Pease on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "PBImage.h"
#import <Parse/PFObject+Subclass.h>

@implementation PBImage
@dynamic user;
@dynamic imageFile;

+ (NSString *)parseClassName {
    return @"PBImage";
}
@end
