//
//  TestCollectionViewController.m
//  CollectionViewTest
//
//  Created by 掛川 敦史 on 2012/10/04.
//
//

#import "TestCollectionViewController.h"

@interface TestCollectionViewController () {
    NSMutableArray *datas;
}

@end

@implementation TestCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    datas = [NSMutableArray array];
    for (int i = 0; i < 100; i++) {
        [datas addObject:[NSNumber numberWithInt:i]];
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return datas.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                                                forIndexPath:indexPath];
    cell.backgroundColor = [UIColor greenColor];
    return cell;
}

@end
