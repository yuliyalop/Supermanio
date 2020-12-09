//
//  ImageDownloadOperation.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/1/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageDownloadOperation : NSOperation
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) void(^completion)(UIImage *);

- (instancetype)initWithUrl:(NSString *)url;

@end

NS_ASSUME_NONNULL_END
