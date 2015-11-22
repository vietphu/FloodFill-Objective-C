//
//  FloodFillImageView.h
//  FloodFill
//
//  Created by Phu's Macbook Pro on 11/20/15.
//  Copyright © 2015 vinasapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+FloodFill.h"

@interface FloodFillImageView : UIImageView
@property int tolorance;
@property (strong, nonatomic)  UIColor *newcolor;
@end
