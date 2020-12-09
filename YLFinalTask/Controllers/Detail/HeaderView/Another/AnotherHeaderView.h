//
//  AnotherHeaderView.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnotherHeaderView : UITableViewHeaderFooterView
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UIButton *openClose;
@property (strong, nonatomic) CAGradientLayer *gradient;

-(NSString *) fillNameOfSection: (NSInteger )section;
@end

NS_ASSUME_NONNULL_END
