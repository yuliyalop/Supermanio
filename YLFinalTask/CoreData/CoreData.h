//
//  CoreData.h
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/26/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Superhero+CoreDataProperties.h"
#import "Superhero+CoreDataClass.h"
#import "CellViewModel.h"
#import "DetailPresenter.h"

NS_ASSUME_NONNULL_BEGIN
@class ListViewController;
@interface CoreData : NSObject
@property (nonatomic, strong) ListViewController *list;
@property (nonatomic) NSFetchedResultsController *frc;

-(void)addToFavouritesModel: (CellViewModel *)model;
- (void) removeFromFavouritiesForIndex: (NSUInteger )index;
-(instancetype) initWithView: (DetailViewController *)view;

-(NSManagedObjectContext *)viewContext ;
@end

NS_ASSUME_NONNULL_END
