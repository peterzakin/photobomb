//
//  ParseStore.m
//  Uploads an image to the Parse BaaS
//
//  Created by Alexander Pease on 24/11/2013.

#import "ParseStore.h"
#import "PBImage.h"

@implementation ParseStore

#define PADDING_TOP 0 // For placing the images nicely in the grid
#define PADDING 4
#define THUMBNAIL_COLS 4
#define THUMBNAIL_WIDTH 75
#define THUMBNAIL_HEIGHT 75

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Main methods

- (void)uploadImage:(NSData *)imageData
{
    PFFile *imageFile = [PFFile fileWithName:@"image.jpg" data:imageData];

    // Save PFFile
    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {

            // Create a PFObject around a PFFile and associate it with the current user
            PFObject *userPhoto = [PFObject objectWithClassName:@"UserPhoto"];
            [userPhoto setObject:imageFile forKey:@"imageFile"];
            
            // Set the access control list to current user for security purposes
            userPhoto.ACL = [PFACL ACLWithUser:[PFUser currentUser]];
            
            PFUser *user = [PFUser currentUser];
            [userPhoto setObject:user forKey:@"user"];
            
            [userPhoto saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
                if (error) {
                    // Log details of the failure
                    NSLog(@"Error: %@ %@", error, [error userInfo]);
                }
            }];
        }
        else{
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}
@end
