//
//  SupermanItem.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SupermanItem : NSObject

@property (nonatomic, copy) NSString *supermanName;
@property (nonatomic, copy) NSString *imageURL;
@property (nonatomic, copy) NSNumber *intelligence;
@property (nonatomic, copy) NSNumber* strength;
@property (nonatomic, copy) NSNumber* power;
@property (nonatomic, copy) NSNumber* combat;
@property (nonatomic, copy) NSString *gender;
@property (nonatomic, copy) NSString *race;
@property (nonatomic, copy) NSString *height;
@property (nonatomic, copy) NSString *weight;
@property (nonatomic, copy) NSString *eyeColor;
@property (nonatomic, copy) NSString *hairColor;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, copy) NSString *alterEgos;
@property (nonatomic, copy) NSString *aliases;
@property (nonatomic, copy) NSString *placeOfBirth;
@property (nonatomic, copy) NSString *firstAppearance;
@property (nonatomic, copy) NSString *publisher;
@property (nonatomic, copy) NSString *alignment;
@property (nonatomic, copy) NSString *occupation;
@property (nonatomic, copy) NSString *base;


-(instancetype)initWithDictionary: (NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
