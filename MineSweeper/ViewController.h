//
//  ViewController.h
//  MineSweeper
//
//  Created by Bryant_Sell on 4/25/14.
//
//

#import <UIKit/UIKit.h>
#import "ImageCell.h"
#import "TileModel.h"

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    IBOutlet UICollectionView *_collectionView;
    TileModel *tiles;
}
@end
