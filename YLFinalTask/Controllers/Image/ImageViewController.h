//
//  ImageViewController.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstHeaderView.h"
NS_ASSUME_NONNULL_BEGIN

@interface ImageViewController : UIViewController

-(instancetype) initWithModel: (CellViewModel *)model;

@end

NS_ASSUME_NONNULL_END
