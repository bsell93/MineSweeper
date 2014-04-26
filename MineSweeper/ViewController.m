//
//  ViewController.m
//  MineSweeper
//
//  Created by Bryant_Sell on 4/25/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{    
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    /* What will be in collection view (ImageCell) subclass of UICollectionViewCell */
    [_collectionView registerClass:[ImageCell class] forCellWithReuseIdentifier:@"Cell"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tiles = [[TileModel alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Sets number of cells in collectionview */
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 48;
}

/* Create cells to put in collectionview */
- (ImageCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    /* Grab empty(null) cell in collectionview */
    ImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    /* Create imageview with image */
    UIImageView *ImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"square.png"]];
    /* Pop the view into the cell */
    [cell addSubview:ImageView];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCell *cell = (ImageCell *)[collectionView cellForItemAtIndexPath:indexPath];
    if ([[[tiles.board objectAtIndex:[indexPath indexAtPosition:0]] objectAtIndex:[indexPath indexAtPosition:1]] isEqualToNumber:[[NSNumber alloc] initWithInt:1]]) {
    }
}

@end
