//
//  CameraViewController.m
//  PhotoBomb
//
//  Created by Peter Zakin on 11/24/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "CameraViewController.h"
#import "EditViewController.h"

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
        NSLog(@"No camera detected");
        //UIImage *image = [UIImage imageNamed:@"peter.jpg"];
        //[self dismissViewControllerAnimated:YES completion:nil];
        EditViewController *evc = [[EditViewController alloc] init];
        //evc.image = image;
        UINavigationController *foo = [self navigationController];
        [[self navigationController] pushViewController:evc animated:YES];
    }
}

/* Once image has been selected, go to EditViewController */
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:^(void){
        EditViewController *evc = [[EditViewController alloc] initWithImage:image];
        //evc.image = image;
        [[self navigationController] pushViewController:evc animated:YES];
    }];

}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Aviary stuff
/* DEPRACATED AVIARY */
/*- (void)displayEditorForImage:(UIImage *)imageToEdit
{
    AFPhotoEditorController *editorController = [[AFPhotoEditorController alloc] initWithImage:imageToEdit];
    [editorController setDelegate:self];
    [self presentViewController:editorController animated:YES completion:nil];
}
*/

/* Aviary delegate method that is called when Aviary is done with an image. 
 This method then immediately moves logic to ShareViewController */
/*- (void)photoEditor:(AFPhotoEditorController *)editor finishedWithImage:(UIImage *)image
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

}
*/

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
