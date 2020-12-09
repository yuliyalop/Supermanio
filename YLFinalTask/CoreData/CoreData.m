//
//  CoreData.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/26/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "CoreData.h"
#import "AppDelegate.h"
#import "ListPresenter.h"

@interface CoreData () <NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) DetailViewController *detail;

@end

@implementation CoreData

-(instancetype) initWithView: (DetailViewController *)detail {
    self = [super init];
    if (self) {
       _detail  = detail;
    }
    return self;
}

-(NSManagedObjectContext *)viewContext {
    return ((AppDelegate *)UIApplication.sharedApplication.delegate).persistentContainer.viewContext;
}

-(NSManagedObjectContext *)newBackgroundContext {
    return ((AppDelegate *)UIApplication.sharedApplication.delegate).persistentContainer.newBackgroundContext;
}


-(void)addToFavouritesModel: (CellViewModel *)model {
    [self viewContext].automaticallyMergesChangesFromParent = YES;

    self.frc.delegate = self;

    [self newBackgroundContext].automaticallyMergesChangesFromParent = YES;

    NSManagedObjectContext *context = [self newBackgroundContext];
    __block Superhero *superhero;
    NSError *Fetcherror;
    NSArray *mutableFetchResults = [context
                                            executeFetchRequest:[Superhero fetchRequest] error:&Fetcherror];

    if (!mutableFetchResults) {

       }
    if ([[mutableFetchResults valueForKey:@"name"] containsObject: self.detail.model.name]){
    } else {
        [context performBlockAndWait:^{
            superhero = [[Superhero alloc]initWithContext:context];
            
            superhero.name = model.name;
            superhero.url = model.imageURL;
            superhero.intelligence =  model.intelligence.stringValue;{
            superhero.strength = model.strength.stringValue;
            superhero.power = model.power.stringValue;
            superhero.combat = model.combat.stringValue;
            superhero.gender = model.gender;
            //superhero.race = model.race;
            superhero.height = model.height;
            superhero.weight = model.weight;
            superhero.eyeColor = model.eyeColor;
            superhero.hairColor = model.hairColor;
            superhero.fullName = model.fullName;
            superhero.alterEgos = model.alterEgos ;
            superhero.aliases = model.aliases;
            superhero.placeOfBirth = model.placeOfBirth;
            superhero.firstAppearance = model.firstAppearance ;
            superhero.publisher =  model.publisher;
            superhero.alignment = model.alignment;
            superhero.occupation = model.occupation;
            superhero.base = model.base;
                superhero.like = model.like;
            }
        }];

        [context save:nil];
    }
    self.frc = [[NSFetchedResultsController alloc] initWithFetchRequest:[Superhero fetchRequest] managedObjectContext:[self viewContext] sectionNameKeyPath:nil cacheName:nil];
        [self.frc performFetch:nil];
    
}

- (void) removeFromFavouritiesForIndex: (NSUInteger )index {
    
   self.frc = [[NSFetchedResultsController alloc] initWithFetchRequest:[Superhero fetchRequest] managedObjectContext:[self viewContext] sectionNameKeyPath:nil cacheName:nil];
       [self.frc performFetch:nil];
    Superhero *superhero = [self.frc.fetchedObjects objectAtIndex:index];

    NSManagedObjectContext *context = [self viewContext];
    [context performBlockAndWait:^{
       [context deleteObject:superhero];
    }];

    [context save:nil];
    
    
    
}

@end
