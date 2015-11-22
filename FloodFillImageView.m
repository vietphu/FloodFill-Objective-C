//
//  LinkedList.h
//  FloodFill
//
//  Created by Phu's Macbook Pro on 11/20/15.
//  Copyright © 2015 vinasapp. All rights reserved.
//

#import "FloodFillImageView.h"

@implementation FloodFillImageView

@synthesize tolorance,newcolor;

- (UIColor*)getRandomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] == 1)
    {
        UITouch * touch = [touches anyObject];
        CGPoint tpoint = [touch locationInView:self];
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                 UIImage *filledImage = [self.image floodFillFromPoint:tpoint withColor:[self getRandomColor] andTolerance:0];

                dispatch_async(dispatch_get_main_queue(), ^{
                    [self setImage:filledImage];
                });
            });
    }

}
@end