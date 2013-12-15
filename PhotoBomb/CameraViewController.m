//
//  CameraViewController.m
//  PhotoBomb
//
//  Created by Peter Zakin on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "CameraViewController.h"
#import "ShareViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    if([UIImagePickerController isSourceTypeAvailable:
        UIImagePickerControllerSourceTypeCamera] == YES){
        [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
        [picker setDelegate:self];
        [self presentViewController:picker animated:NO completion:nil];
    } else {
        UIImage *image = [UIImage imageNamed:@"peter.jpg"];
        [self displayEditorForImage:image];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:^(void){
        [self displayEditorForImage:image];
    }];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Aviary stuff
- (void)displayEditorForImage:(UIImage *)imageToEdit
{
    AFPhotoEditorController *editorController = [[AFPhotoEditorController alloc] initWithImage:imageToEdit];
    [editorController setDelegate:self];
    [self presentViewController:editorController animated:YES completion:nil];
}

/* Aviary delegate method that is called when Aviary is done with an image. 
 This method then immediately moves logic to ShareViewController */
- (void)photoEditor:(AFPhotoEditorController *)editor finishedWithImage:(UIImage *)image
{
    [editor dismissViewControllerAnimated:YES completion:nil];
    
    ShareViewController *svc = [[ShareViewController alloc] init];
    svc.image = image;
    [[self navigationController] pushViewController:svc animated:YES];
}


- (void)photoEditorCanceled:(AFPhotoEditorController *)editor
{
    // Handle cancelation here
    NSLog(@"PHOTO EDITOR CANCELLED");
    [editor dismissViewControllerAnimated:YES completion:nil];
    
    //goes back to first screen
    [[self navigationController] popViewControllerAnimated:YES];
}

@end
