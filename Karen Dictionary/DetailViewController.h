//
//  DetailViewController.h
//  Karen Dictionary
//
//  Created by Ehkalu Moo on 11/22/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationItem *navbar;

@property (weak, nonatomic) IBOutlet UILabel *titlelabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitlelabel;
@property (weak, nonatomic) IBOutlet UILabel *tenselabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;


@property (strong, nonatomic) NSString *titlecontents;
@property (strong, nonatomic) NSString *subtitlecontents;
@property (strong, nonatomic) NSString *tensecontents;




@end
