//
//  HomePresentrt.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "HomePresentrt.h"
#import "ListTableViewCell.h"

@implementation HomePresentrt

@synthesize dataSourse;
@synthesize models;

- (instancetype)initWithView:(HomeViewController *)view {
    if (self = [super init]) {
        _view = view;
        dataSourse = [NSArray new];

    }
    return self;
}

- (void)startLoading {
    self.loader = [[Loader alloc] initWithParser:[JSONParser new]];
    self.models =  [NSMutableArray new];
    __weak typeof(self) weakSelf = self;
    [self.loader load:^(NSArray<SupermanItem *> * supermen, NSError *error) {
        
                dispatch_async(dispatch_get_main_queue(), ^{
                if (error) {
                   
                } else {

                    weakSelf.dataSourse = supermen;
                    [self fillModels];
                    [weakSelf.view.listTable reloadData];
                }
       
            });
        }];
}


- (CellViewModel *) configureViewModelAtIndexPath: (NSIndexPath *)indexPath {
    
    CellViewModel *model = self.models[indexPath.item];

    return model;
}

-(void) fillModels {
    SupermanItem *item;
    
    for (int i = 0; i < self.dataSourse.count; i++) {
        CellViewModel *model = [CellViewModel new];
        item = self.dataSourse[i];
    model.name = item.supermanName;
    model.imageURL = item.imageURL;
    model.intelligence = item.intelligence;
    model.strength = item.strength;
    model.power = item.power;
    model.combat = item.combat;
    model.gender = item.gender;
    model.race = item.race;
    model.height = item.height;
    model.weight = item.weight;
    model.eyeColor = item.eyeColor;
    model.hairColor = item.hairColor;
    model.fullName = item.fullName;
    model.alterEgos = item.alterEgos;
    model.aliases = item.aliases;
    model.placeOfBirth = item.placeOfBirth;
    model.firstAppearance = item.firstAppearance;
    model.publisher = item.publisher;
    model.alignment = item.alignment;
    model.occupation = item.occupation;
    model.base = item.base;

    [self.models addObject:model];
    model.index = [self.models indexOfObject:model];

    }
}


@end
