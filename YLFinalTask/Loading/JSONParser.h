//
//  JSONParser.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SupermanItem.h"
NS_ASSUME_NONNULL_BEGIN

@interface JSONParser : NSObject
- (void)parseSupermen:(NSData *)data completion:(void (^)(NSArray<SupermanItem *> *, NSError *))completion;
@end

NS_ASSUME_NONNULL_END
