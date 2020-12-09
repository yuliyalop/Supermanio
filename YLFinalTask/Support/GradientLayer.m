//
//  GradientLayer.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/2/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "GradientLayer.h"
#import <UIKit/UIKit.h>
@implementation GradientLayer

+(CAGradientLayer *)gradient {
    GradientLayer *gradient = [GradientLayer new];
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(1, 1);
    gradient.colors = @[(id)[UIColor blueColor].CGColor, (id)[UIColor redColor].CGColor];
    return gradient;
}
@end
