//
//  EditViewController.m
//  PhotoBomb
//
//  Created by Alexander Pease on 12/21/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import "EditViewController.h"
#import "ShareViewController.h"
#import "DAScratchPadView.h"

@interface EditViewController ()

@end

@implementation EditViewController



- (id)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        // Set up scratchpad
        self.scratchpad = [[DAScratchPadView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:self.scratchpad];
        if (image) {
            [self.scratchpad setSketch:image];
        }
        else {
            [self.scratchpad setSketch:[UIImage imageNamed:@"peter.jpg"]];
        }
        
        // Add finished button
        int buttonWidth = 100;
        int buttonHeight = 40;
        self.finishButton = [[UIButton alloc]initWithFrame:CGRectMake(buttonWidth-buttonWidth,
                                                                      buttonHeight-buttonHeight,
                                                                      buttonWidth,
                                                                      buttonHeight)];
        self.finishButton.backgroundColor = [UIColor blackColor];
        [self.finishButton setTitle:@"Finished!" forState:UIControlStateNormal];
        [self.finishButton addTarget:self action:@selector(finishButtonTouchHandler:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.finishButton];

    }
    return self;
}

/* Grabs completed image and sends to ShareViewController */
- (IBAction)finishButtonTouchHandler:(id)sender
{
    UIImage *image = [self.scratchpad getSketch];
    ShareViewController *svc = [[ShareViewController alloc] init];
    svc.image = image;
    [[self navigationController] pushViewController:svc animated:YES];
    
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
