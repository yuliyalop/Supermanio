//
//  ListTableViewCell.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/22/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListTableViewCell : UITableViewCell
-(void)configureCellWithModel: (CellViewModel *)model;

@end

NS_ASSUME_NONNULL_END
