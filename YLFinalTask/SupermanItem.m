//
//  SupermanItem.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "SupermanItem.h"

@implementation SupermanItem

-(instancetype)initWithDictionary: (NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _supermanName = dictionary[@"name"];
        _imageURL = dictionary [@"images"]  [@"lg"];
        _intelligence = dictionary [@"powerstats"] [@"intelligence"];
        _strength = dictionary [@"powerstats"] [@"strength"];
        _power = dictionary [@"powerstats"] [@"power"];
        _combat = dictionary [@"powerstats"] [@"combat"];
        _gender = dictionary [@"appearance"] [@"gender"];
        _race = dictionary [@"appearance"] [@"race"];
        _height = dictionary [@"appearance"] [@"height"][1];
        _weight = dictionary [@"appearance"] [@"weight"][1];
        _eyeColor = dictionary [@"appearance"] [@"eyeColor"];
        _hairColor = dictionary [@"appearance"] [@"hairColor"];
        _fullName = dictionary [@"biography"] [@"fullName"];
        _alterEgos = dictionary [@"biography"] [@"alterEgos"];
        _aliases = dictionary [@"biography"] [@"aliases"] [0];
        _placeOfBirth = dictionary [@"biography"] [@"placeOfBirth"];
        _firstAppearance = dictionary [@"biography"] [@"firstAppearance"];
        _publisher = dictionary [@"biography"] [@"publisher"];
        _alignment = dictionary [@"biography"] [@"alignment"];
        _occupation = dictionary [@"work"] [@"occupation"];
        _base = dictionary [@"base"] [@"base"];
        
    }
    return self;
}
@end


