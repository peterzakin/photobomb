//
//  PBLibraryViewController.m
//  
//
//  Created by Peter Zakin on 12/21/13.
//
//

#import "PBLibraryViewController.h"
#import "ParseStore.h"
#import <Parse/Parse.h>

@interface PBLibraryViewController ()

@end

NSInteger PHOTO_CELL_SIZE = 380;


@implementation PBLibraryViewController

- (id)init
{
    //probably want to make this initWithUserId
    
    self = [super init];
    if(self){
        self.photos = [[NSMutableArray alloc] init];
        
        //HERE IS WHERE WE WANT TO LOAD PHOTOS
                
        UIImage *photo = [UIImage imageNamed:@"peter.jpg"];
        [self.photos addObject:photo];
        [self.photos addObject:photo];
    
    }
    
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *profileCard = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    
    [profileCard setBackgroundColor:[UIColor redColor]];
    
    
    [self.view addSubview:profileCard];
    [self.view setBackgroundColor:[UIColor redColor]];
    
    [self setupTableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d", [self.photos count]);
    return [self.photos count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIImage *photo = [self.photos objectAtIndex:[indexPath row]];

    PBLibraryPhotoCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell){
        cell = [[PBLibraryPhotoCell alloc] initWithImage:photo];
    }
    
    [cell applyAuthorPhoto:photo username:@"pewter zakin"];
//    cell.backgroundColor = [[UIColor alloc] initWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return PHOTO_CELL_SIZE;
}

-(void)setupTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height - 100)];
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.view addSubview:self.tableView];
    
}


@end
