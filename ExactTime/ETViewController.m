//
//  ETViewController.m
//  ExactTime
//
//  Created by Joshua Howland on 6/16/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ETViewController.h"
#import "NetworkController.h"

@interface ETViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation ETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NetworkController *networkController = [NetworkController new];
    [networkController getExactTimeInfo:^(NSDictionary *extactTimeInfo, NSError *error) {
        if(!error)
        {
            NSLog(@"%@", extactTimeInfo);
            self.timeLabel.text = extactTimeInfo[@"time"];
        }else
        {
            NSLog(@"%@",error.userInfo [NSLocalizedDescriptionKey]);
        }
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
