//
//  ListPresenter.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@protocol ListPresenter <NSObject>
@property (strong, nonatomic) NSArray  *dataSourse;
@property (strong, nonatomic) NSMutableArray <CellViewModel *> *models;

- (void)startLoading;
- (CellViewModel *) configureViewModelAtIndexPath: (NSIndexPath *)indexPath;

@optional
- (void) loadImagesForIndexPath: (NSIndexPath *)indexPath;
- (void) fillModels;
@end

NS_ASSUME_NONNULL_END
