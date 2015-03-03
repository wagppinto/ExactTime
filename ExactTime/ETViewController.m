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

@property (nonatomic, strong) IBOutlet UILabel *timeLabel;

@end

@implementation ETViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NetworkController *networkController = [[NetworkController alloc] init];
    
    [networkController getExactTimeInfo:^(NSDictionary *exactTimeInfo, NSError *error) {
       
        if (!error) {
            self.timeLabel.text = exactTimeInfo[@"time"];
        } else {
            NSLog(@"%@",error.userInfo[NSLocalizedDescriptionKey]);
        }
    }];
    
    
}

@end
