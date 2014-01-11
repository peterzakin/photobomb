//
//  PBLibraryViewController.h
//  
//
//  Created by Peter Zakin on 12/21/13.
//
//

#import <UIKit/UIKit.h>
#import "PBLibraryPhotoCell.h"

@interface PBLibraryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{

}
@property UITableView *tableView;
@property NSMutableArray *photos;


@end
