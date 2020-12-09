//
//  ControllerFactory.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListViewController.h"
#import "Types.h"
NS_ASSUME_NONNULL_BEGIN

@interface ControllerFactory : NSObject
+(ListViewController *)createViewControllerWithType:(Type )type;
@end

NS_ASSUME_NONNULL_END
