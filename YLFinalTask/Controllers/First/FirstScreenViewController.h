//
//  FirstScreenViewController.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/21/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Types.h"
NS_ASSUME_NONNULL_BEGIN


@interface FirstScreenViewController : UIViewController
@property (strong, nonatomic) UITabBarController *tabBarController;

- (IBAction)startTapped:(id)sender;
@end

NS_ASSUME_NONNULL_END
