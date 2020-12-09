//
//  UIImageView+LoadWithURL.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/1/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (LoadWithURL)
- (void)loadImageWithUrl:(NSURL *)url andPlaceholder:(UIImage *)placeholder;
@end

NS_ASSUME_NONNULL_END
