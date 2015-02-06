//
//  JMKMainViewController.m
//  UXKitSample
//
//  Created by Michał Kałużny on 06.02.2015.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "JMKMainViewController.h"
#import "JMKTableViewController.h"

@interface JMKMainViewController ()

@property (strong, nonatomic) UXTableView *tableView;
@end

@implementation JMKMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Main";

    UXBarButtonItem *barItem = [[UXBarButtonItem alloc] initWithTitle:@"Next" style:1 target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItems = @[barItem];
    
    UXBarButtonItem *toolbarButton = [[UXBarButtonItem alloc] initWithTitle:@"Test there!" style:1 target:self action:nil];
    UXBarButtonItem *flexibleSpace = [[UXBarButtonItem alloc] initWithBarButtonSystemItem:13 target:nil action:nil];
    
    
    UXLabel *label = [[UXLabel alloc] initWithFrame:CGRectMake(0, 0, 120, 22)];
    label.text = @"UXKit is great";
    
    UXBarButtonItem *labelButton = [[UXBarButtonItem alloc] initWithCustomView:label];
    
    [self setToolbarItems:@[labelButton, flexibleSpace, toolbarButton]];
    
    self.navigationController.toolbarHidden = NO;
}

- (void)next
{
    UXViewController *vc = [[JMKTableViewController alloc] init];
    vc.title = @"Table View Controller";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
