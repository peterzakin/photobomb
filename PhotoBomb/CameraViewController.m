//
//  CameraViewController.m
//  PhotoBomb
//
//  Created by Peter Zakin on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "CameraViewController.h"

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
        [self presentViewController:picker animated:YES completion:nil];
    } else {
        UIImage *image = [UIImage imageNamed:@"peter.jpg"];
//        [self.imageView setImage:image];
        [self displayEditorForImage:image];
    }
  

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [self.imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
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

- (void)photoEditor:(AFPhotoEditorController *)editor finishedWithImage:(UIImage *)image
{
    [editor dismissViewControllerAnimated:YES completion:^(void){
        NSLog(@"entered completion block");
    }];
   [self.imageView setImage:image];
}

- (void)photoEditorCanceled:(AFPhotoEditorController *)editor
{
    // Handle cancelation here
    NSLog(@"PHOTO EDITOR CANCELLED");
    [editor dismissViewControllerAnimated:YES completion:nil];
    [[self navigationController] popViewControllerAnimated:YES];
}

@end
