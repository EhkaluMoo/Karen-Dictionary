//
//  DetailViewController.m
//  Karen Dictionary
//
//  Created by Ehkalu Moo on 11/22/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize titlelabel;
@synthesize tenselabel;
@synthesize subtitlelabel;
@synthesize navbar;

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
    
	self.titlelabel.text = self.titlecontents;
    self.subtitlelabel.text = self.subtitlecontents;
    self.tenselabel.text = self.tensecontents;
    self.navbar.title = self.titlecontents;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
