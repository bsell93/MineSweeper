//
//  TileModel.h
//  MineSweeper
//
//  Created by Bryant_Sell on 4/25/14.
//
//

#import <Foundation/Foundation.h>

@interface TileModel : NSObject

//@property (strong, nonatomic) NSMutableArray *imageTiles;
@property (nonatomic) NSMutableArray *board;
@property (nonatomic) int rows;
@property (nonatomic) int cols;

@end
