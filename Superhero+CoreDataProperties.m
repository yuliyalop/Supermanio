//
//  Superhero+CoreDataProperties.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/5/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//
//

#import "Superhero+CoreDataProperties.h"

@implementation Superhero (CoreDataProperties)

+ (NSFetchRequest<Superhero *> *)fetchRequest {
    NSFetchRequest<Superhero *> *request = [NSFetchRequest fetchRequestWithEntityName:@"Superhero"];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]];
    return request;
}

@dynamic name;
@dynamic url;
@dynamic intelligence;
@dynamic strength;
@dynamic power;
@dynamic combat;
@dynamic gender;
@dynamic race;
@dynamic height;
@dynamic weight;
@dynamic eyeColor;
@dynamic hairColor;
@dynamic fullName;
@dynamic alterEgos;
@dynamic aliases;
@dynamic placeOfBirth;
@dynamic firstAppearance;
@dynamic publisher;
@dynamic alignment;
@dynamic occupation;
@dynamic base;
@dynamic like;

@end
