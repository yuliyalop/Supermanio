//
//  Loader.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONParser.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

- (instancetype)initWithParser:(JSONParser *) parser;
- (void)load:(void (^)(NSArray<SupermanItem *> *, NSError *))completion;
- (void)loadImageForURL:(NSString *)url completion:(void (^)(UIImage *))completion;
- (NSURLSession *)session;
@end

NS_ASSUME_NONNULL_END
