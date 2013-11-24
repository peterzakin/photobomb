//
//  PBImage.h
//  PhotoBomb
//
//  Created by Alexander Pease on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


// NOT CURRENTLY BEING USED BUT COULD BE GOOD SUBCLASS IN FUTURE
@interface PBImage : PFObject<PFSubclassing>

@property (retain) PFUser *user;
@property (retain) PFFile *imageFile;

+ (NSString *)parseClassName;

@end
