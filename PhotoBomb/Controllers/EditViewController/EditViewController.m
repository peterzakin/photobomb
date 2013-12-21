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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/* Adds DAScratchPadView as the editing view */
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", self.view);
    
    [self.view setBackgroundColor:[UIColor redColor]];
    

    
    // Do any additional setup after loading the view from its nib.
    /*
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
    label.text = @"YOOOOO";
    
    [self.view addSubview:label];
    DAScratchPadView* scratchpad = [[DAScratchPadView alloc] initWithFrame:CGRectMake(30.0f, 30.0f, 150.0f, 150.0f)];
    [self.view addSubview:scratchpad];
    [scratchpad setSketch:self.image];
    [scratchpad clearToColor:[UIColor redColor]]; */
    NSLog(@"loaded EditViewController");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
