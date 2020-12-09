//
//  StarPresenter.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StarViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface StarPresenter : NSObject <ListPresenter>
@property (nonatomic, weak) StarViewController *view;
@property (nonatomic, strong) NSMutableArray *saved;


- (instancetype)initWithView:(StarViewController *)view;

@end

NS_ASSUME_NONNULL_END
