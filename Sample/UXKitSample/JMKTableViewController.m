//
//  JMKTableViewController.m
//  UXKitSample
//
//  Created by Michał Kałużny on 06.02.2015.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "JMKTableViewController.h"
#import "DMCollectionViewController.h"

@interface JMKTableViewController () <UXTableViewDataSource, UXTableViewDelegate>

@end

@implementation JMKTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2 {
    return 3;
}

- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2
{
    return 60.f;
}

-(id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 {
    UXTableViewCell *cell = [[UXTableViewCell alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
    cell.textLabel.text = @"Those Cells are beautiful";
    
    cell.backgroundColor = [NSColor lightGrayColor];
    
    return cell;
}

-(void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2
{
    DMCollectionViewController *collectionVC = [[DMCollectionViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:collectionVC animated:YES];
}


@end
