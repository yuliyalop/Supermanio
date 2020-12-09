//
//  ImageViewController.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ImageViewController

-(instancetype) initWithModel: (CellViewModel *)model {
    self = [super init];
    if (self) {
        _image = model.supermanImage;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.imageView = [[UIImageView alloc]initWithImage:self.image];
    [self.view addSubview:self.imageView];
    
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.imageView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [self.imageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
    ]];
    
}



@end
