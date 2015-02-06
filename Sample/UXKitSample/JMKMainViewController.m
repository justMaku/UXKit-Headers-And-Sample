//
//  JMKMainViewController.m
//  UXKitSample
//
//  Created by Michał Kałużny on 06.02.2015.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "JMKMainViewController.h"
#import "JMKTableViewController.h"

@interface JMKMainViewController () <UXTableViewDelegate, UXTableViewDataSource>

@property (strong, nonatomic) UXTableView *tableView;

@end

@implementation JMKMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Main";
}

- (void)viewDidAppear
{
    UXBarButtonItem *barItem = [[UXBarButtonItem alloc] initWithTitle:@"Next" style:1 target:self action:@selector(next)];
        
    self.navigationItem.rightBarButtonItems = @[barItem];
}

- (void)next
{
    UXViewController *vc = [[JMKTableViewController alloc] init];
    vc.title = @"Table View Controller";
    [self.navigationController pushViewController:vc animated:YES];
}

}

@end
