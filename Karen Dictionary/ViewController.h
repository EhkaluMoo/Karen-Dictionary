//
//  ViewController.h
//  Karen Dictionary
//
//  Created by Ehkalu Moo on 11/22/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate ,UITableViewDataSource,UISearchBarDelegate, UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mytableview;

@property (strong, nonatomic) IBOutlet UISearchBar *SearchBar;

@end
