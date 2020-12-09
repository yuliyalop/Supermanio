//
//  DetailViewController.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/31/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
- (instancetype) initWithModel: (CellViewModel *)model;

@property (strong, nonatomic) CellViewModel *model;

- (void) didTapLikeInController ;
- (void) didTapDislike;

@end

NS_ASSUME_NONNULL_END
