//
//  PBLibraryViewController.m
//  
//
//  Created by Peter Zakin on 12/21/13.
//
//

#import "PBLibraryViewController.h"

@interface PBLibraryViewController ()

@end

@implementation PBLibraryViewController

- (id)init
{
    self = [super init];
    if(self){
        self.photos = [[NSMutableArray alloc] init];
        [self.photos addObject:[UIImage imageNamed:@"peter.jpg"]];
        NSLog(@"%d", [self.photos count]);
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height - 100)];
        [self.tableView setDelegate:self];
        [self.tableView setDataSource:self];
        [self.view addSubview:self.tableView];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d", [self.photos count]);
    return [self.photos count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"YOOO");
    //UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
   // if(!cell){
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    //}

    
    return cell;
}


@end
