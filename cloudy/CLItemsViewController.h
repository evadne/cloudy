//
//  CLItemsViewController.h
//  cloudy
//
//  Created by Evadne Wu on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLItemsViewController : UITableViewController

@property (nonatomic, weak) IBOutlet UIBarButtonItem *addBarButtonItem;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *refreshBarButtonItem;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *actionBarButtonItem;

- (IBAction) handleAddBarButtonItemTap:(UIBarButtonItem *)sender;
- (IBAction) handleRefreshBarButtonItemTap:(UIBarButtonItem *)sender;
- (IBAction) handleActionBarButtonItemTap:(UIBarButtonItem *)sender;

@end
