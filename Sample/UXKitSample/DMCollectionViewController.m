//
//  DMCollectionViewController.m
//  UXKitSample
//
//  Created by Thomas Ricouard on 06/02/15.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "DMCollectionViewController.h"

@interface DMCollectionViewCell : UXCollectionViewCell

@property (nonatomic, strong) UXLabel *textLabel;

@end

@implementation DMCollectionViewCell

- (instancetype)initWithFrame:(struct CGRect)arg1
{
    self = [super initWithFrame:arg1];
    if (self) {
        self.textLabel = [[UXLabel alloc] initWithFrame:self.contentView.frame];
        [self.contentView addSubview:self.textLabel];
    }
    return self;
}


@end

@interface DMCollectionViewController ()

@property (nonatomic, strong) UXCollectionView *collectionView;

@end

@implementation DMCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"CollectionView Demo";
    
    UXCollectionViewFlowLayout *layout = [[UXCollectionViewFlowLayout alloc] init];
    [layout setItemSize:CGSizeMake(200.0f, 200.0f)];
    self.collectionView = [[UXCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    [self.collectionView setDataSource:self];
    [self.collectionView setDelegate:self];
    [self.collectionView registerClass:[DMCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionView reloadData];
    
    [self.view addSubview:self.collectionView];
}

- (UXCollectionViewCell *)collectionView:(UXCollectionView *)arg1 cellForItemAtIndexPath:(NSIndexPath *)arg2
{
    DMCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:arg2];
    cell.textLabel.text = @"Test";
    return cell;
}

- (long long)collectionView:(UXCollectionView *)arg1 numberOfItemsInSection:(long long)arg2
{
    return 25;
}

@end
