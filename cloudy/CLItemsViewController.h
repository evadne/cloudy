//
//  CLItemsViewController.h
//  cloudy
//
//  Created by Evadne Wu on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLItemsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addBarButtonItem;
- (IBAction)handleAddBarButtonItemTap:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *refreshBarButtonItem;
- (IBAction)handleRefreshBarButtonItemTap:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *actionBarButtonItem;
- (IBAction)handleActionBarButtonItemTap:(UIBarButtonItem *)sender;

@end
