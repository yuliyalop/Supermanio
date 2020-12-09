//
//  FirstHeaderView.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "CellViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface FirstHeaderView : UIView  
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UIButton *like;
@property (strong, nonatomic) DetailViewController *controller;
@property (strong, nonatomic) CellViewModel *model;

@end

NS_ASSUME_NONNULL_END
