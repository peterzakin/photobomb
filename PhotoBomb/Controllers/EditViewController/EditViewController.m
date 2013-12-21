//
//  EditViewController.m
//  PhotoBomb
//
//  Created by Alexander Pease on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "EditViewController.h"
#import "DAScratchPadView.h"

@interface EditViewController ()

@end

@implementation EditViewController



-(id)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.scratchpad = [[DAScratchPadView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:self.scratchpad];
        
        // Set up image to scratchpad
        if (image) {
            [self.scratchpad setSketch:image];
        }
        else {
            [self.scratchpad setSketch:[UIImage imageNamed:@"peter.jpg"]];
        }
    }
    return self;
}

/* Grabs completed image and sends to ShareViewController */
-(void)finish
{
    UIImage *finalImage = [self.scratchpad getSketch];
}








#pragma mark Unused
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
