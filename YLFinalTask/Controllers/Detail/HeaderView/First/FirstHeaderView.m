//
//  FirstHeaderView.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "FirstHeaderView.h"
#import "GradientLayer.h"
#import "ImageViewController.h"

@implementation FirstHeaderView 


-(void)awakeFromNib {
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp {
    
    self.name.font = [UIFont fontWithName:@"Chalkduster" size:20];
    [self addSubview:self.imageView];
    [self addSubview:self.name];
    [self addSubview:self.like];

    [self tapSettigs];
}

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (void)drawRect:(CGRect)rect {
    CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    gradientLayer.colors = @[(id)[UIColor blueColor].CGColor, (id)[UIColor redColor].CGColor];
    
}

- (IBAction)likeButtonDidtap:(id)sender {
    if (!self.controller.model.like) {
       
        [self.like setImage:[UIImage imageNamed:@"heart-selected"] forState:UIControlStateNormal];
             [self.controller didTapLikeInController];

    } else  {
       
        [self.like setImage:[UIImage imageNamed:@"heart"]forState:UIControlStateNormal];;
            [self.controller didTapDislike];
        
    }    
}

-(void) tapSettigs {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture)];
    tapGesture.numberOfTapsRequired = 1;
    [self addGestureRecognizer:tapGesture];

}

-(void)tapGesture {
    ImageViewController *image = [[ImageViewController alloc]initWithModel:self.controller.model];
    [self.controller presentViewController:image animated:YES completion:nil];
}
@end
