//
//  DetailTableViewCell.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailTableViewCell : UITableViewCell
- (void)configureForIndexPath: (NSIndexPath *)indexPath withModel: (CellViewModel *)model;
@end

NS_ASSUME_NONNULL_END
