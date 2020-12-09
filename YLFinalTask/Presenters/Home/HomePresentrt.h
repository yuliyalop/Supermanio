//
//  HomePresentrt.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeViewController.h"
#import "Loader.h"
#import "ListPresenter.h"
NS_ASSUME_NONNULL_BEGIN

@interface HomePresentrt : NSObject <ListPresenter>
- (instancetype)initWithView:(HomeViewController *)view;

@property (nonatomic, weak) HomeViewController *view;
@property (strong, nonatomic) Loader *loader;


@end

NS_ASSUME_NONNULL_END
