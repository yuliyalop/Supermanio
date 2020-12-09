//
//  UIImageView+LoadWithURL.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/1/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "UIImageView+LoadWithURL.h"

@implementation UIImageView (LoadWithURL)

- (void)loadImageWithUrl:(NSURL *)url andPlaceholder:(UIImage *)placeholder {
    __weak typeof(self) weakSelf = self;

        NSURLCache* cache = [NSURLCache sharedURLCache];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        NSCachedURLResponse *cachedResponse = [cache cachedResponseForRequest:request];
        if (cachedResponse) {
            UIImage *image = [UIImage imageWithData:cachedResponse.data];
            [weakSelf setImageInMain:image];
        } else {
            [weakSelf setImageInMain:placeholder];
            
            NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                if (error) {
                    return;
                }
                NSCachedURLResponse *cachedResponse = [[NSCachedURLResponse alloc] initWithResponse:response data:data];
                [cache storeCachedResponse:cachedResponse forRequest:request];
                UIImage *image = [UIImage imageWithData:data];
                [weakSelf setImageInMain:image];
            }];
            [dataTask resume];
        }

}

- (void) setImageInMain:(UIImage*)image {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self setImage:image];
        NSLog(@"%@", image);
    });
}

@end
