//
//  DetailPresenter.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/2/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewController.h"
#import "Loader.h"
#import "FirstHeaderView.h"
#import "CoreData.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailPresenter : NSObject

- (instancetype)initWithView:(DetailViewController *)view;

@property (nonatomic, strong) DetailViewController *view;

-(void) loadImageWithModel: (CellViewModel *)model completion:(void (^)(void))completion;
-(void) saveModel: (CellViewModel *)model;
-(void) removeModel: (CellViewModel *)mode;

@end

NS_ASSUME_NONNULL_END
