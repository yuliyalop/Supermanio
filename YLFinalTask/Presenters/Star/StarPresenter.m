//
//  StarPresenter.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "StarPresenter.h"
#import "CoreData.h"
#import "CellViewModel.h"

@interface StarPresenter()
@end

@implementation StarPresenter

@synthesize dataSourse;
@synthesize models;

- (instancetype)initWithView:(StarViewController *)view {
    if (self = [super init]) {
        _view = view;
        
    }
    return self;
}

- (void)startLoading {
    self.models = [NSMutableArray new];
    CoreData *data = [CoreData new];
    data.frc = [[NSFetchedResultsController alloc] initWithFetchRequest:[Superhero fetchRequest] managedObjectContext:[data viewContext] sectionNameKeyPath:nil cacheName:nil];
    [data.frc performFetch:nil];
    self.dataSourse = data.frc.fetchedObjects;
    [self fillModels];
    [self.view.listTable reloadData];
    
}

- (CellViewModel *) configureViewModelAtIndexPath: (NSIndexPath *)indexPath {

    CellViewModel *model = self.models[indexPath.item];
    model.index = [self.models indexOfObject:model];
    
    return model;
    
}

-(void) fillModels {
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;

    Superhero *hero;
    
    for (int i = 0; i < self.dataSourse.count; i++) {
        CellViewModel *model = [CellViewModel new];
        hero = self.dataSourse[i];
    model.name = hero.name;
    model.imageURL = hero.url;
    model.intelligence = [f numberFromString: hero.intelligence];
        model.strength = [f numberFromString: hero.strength];
    model.power = [f numberFromString: hero.power];
        model.combat = [f numberFromString: hero.combat];
    model.gender = hero.gender;
    model.race = hero.race;
    model.height = hero.height;
    model.weight = hero.weight;
    model.eyeColor = hero.eyeColor;
    model.hairColor = hero.hairColor;
    model.fullName = hero.fullName;
    model.alterEgos = hero.alterEgos;
    model.aliases = hero.aliases;
    model.placeOfBirth = hero.placeOfBirth;
    model.firstAppearance = hero.firstAppearance;
    model.publisher = hero.publisher;
    model.alignment = hero.alignment;
    model.occupation = hero.occupation;
    model.base = hero.base;
    model.like = hero.like;
    

    [self.models addObject:model];

}
}

@end
