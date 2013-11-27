//
//  ParseStore.m
//  Uploads an image to the Parse BaaS
//
//  Created by Alexander Pease on 24/11/2013.

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#include <stdlib.h> // For math functions including arc4random (a number randomizer)

@interface ParseStore : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //IBOutlet UIScrollView *photoScrollView;
    //NSMutableArray *allImages;
    
    //PF_MBProgressHUD *HUD;
    //PF_MBProgressHUD *refreshHUD;
}

- (void)uploadImage:(NSData *)imageData;

@end
