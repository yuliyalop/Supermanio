//
//  CellViewModel.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/28/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
NS_ASSUME_NONNULL_BEGIN
@interface CellViewModel : NSObject
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *imageURL;
@property (strong, nonatomic) UIImage *supermanImage;
@property (nonatomic, copy) NSNumber *intelligence;
@property (nonatomic, copy) NSNumber *strength;
@property (nonatomic, copy) NSNumber *power;
@property (nonatomic, copy) NSNumber *combat;
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
@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, assign) BOOL like;
@property (nonatomic, strong) UIImageView *imageView;
@end

NS_ASSUME_NONNULL_END
