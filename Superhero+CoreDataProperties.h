//
//  Superhero+CoreDataProperties.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/5/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//
//

#import "Superhero+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Superhero (CoreDataProperties)

+ (NSFetchRequest<Superhero *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *url;
@property (nullable, nonatomic, copy) NSString *intelligence;
@property (nullable, nonatomic, copy) NSString *strength;
@property (nullable, nonatomic, copy) NSString *power;
@property (nullable, nonatomic, copy) NSString *combat;
@property (nullable, nonatomic, copy) NSString *gender;
@property (nullable, nonatomic, copy) NSString *race;
@property (nullable, nonatomic, copy) NSString *height;
@property (nullable, nonatomic, copy) NSString *weight;
@property (nullable, nonatomic, copy) NSString *eyeColor;
@property (nullable, nonatomic, copy) NSString *hairColor;
@property (nullable, nonatomic, copy) NSString *fullName;
@property (nullable, nonatomic, copy) NSString *alterEgos;
@property (nullable, nonatomic, copy) NSString *aliases;
@property (nullable, nonatomic, copy) NSString *placeOfBirth;
@property (nullable, nonatomic, copy) NSString *firstAppearance;
@property (nullable, nonatomic, copy) NSString *publisher;
@property (nullable, nonatomic, copy) NSString *alignment;
@property (nullable, nonatomic, copy) NSString *occupation;
@property (nullable, nonatomic, copy) NSString *base;
@property (nonatomic) BOOL like;

@end

NS_ASSUME_NONNULL_END
