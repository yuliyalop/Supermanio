//
//  ListViewController.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListPresenter.h"
#import "CoreData.h"
#import "SupermanItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *listTable;
@property (nonatomic, strong) id<ListPresenter> presenter;


@end

NS_ASSUME_NONNULL_END
