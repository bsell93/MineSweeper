//
//  TileModel.m
//  MineSweeper
//
//  Created by Bryant_Sell on 4/25/14.
//
//


#import "TileModel.h"

@implementation TileModel

-(id)init
{
    _rows = 8;
    _cols = 6;
    return self;
}

- (void)FillBoard
{
    int randNum;
    //NSMutableArray *curRow = [[NSMutableArray alloc] init];
    NSMutableArray *bRow = [[NSMutableArray alloc] init];
    for (int r = 0; r<_rows; r++) {
        bRow = [[NSMutableArray alloc] init];
        //curRow = [[NSMutableArray alloc] init];
        for (int c = 0; c<_cols; c++) {
            randNum = arc4random_uniform(2);
            [bRow addObject:[NSNumber numberWithInt:randNum]];
            //[curRow addObject:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"square.png"]]];
        }
        [_board addObject:bRow];
        //[_imageTiles addObject:curRow];
    }
}

@end
