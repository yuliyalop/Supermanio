//
//  JSONParser.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "JSONParser.h"
#import "SupermanItem.h"
@implementation JSONParser
- (void)parseSupermen:(NSData *)data completion:(void (^)(NSArray<SupermanItem *> *, NSError *))completion {
    NSError *error;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    if (error) {
        completion(nil, error);
        return;
    }
    
NSMutableArray<SupermanItem *> *supermen = [NSMutableArray new];
    for (NSDictionary *item in dictionary) {
        [supermen addObject:[[SupermanItem alloc] initWithDictionary:item]];
    }

    NSLog(@"parsing sucsess");
    completion (supermen, nil);
}
@end
