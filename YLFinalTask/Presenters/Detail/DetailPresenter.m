//
//  DetailPresenter.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/2/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "DetailPresenter.h"
#import "Loader.h"
#import "JSONParser.h"
#import "FirstHeaderView.h"

@implementation DetailPresenter

- (instancetype)initWithView:(DetailViewController *)view {
    if (self = [super init]) {
        _view = view;
    }
    return self;
}


-(void) loadImageWithModel: (CellViewModel *)model completion:(void (^)(void))completion {

    Loader *imageLoader = [[Loader alloc]initWithParser:[JSONParser new]];
    [imageLoader loadImageForURL:model.imageURL completion:^(UIImage *image) {
        dispatch_async(dispatch_get_main_queue(), ^{
        model.supermanImage = image;
            completion();
                });
     
            }];
    
}

-(void) saveModel: (CellViewModel *)model {
    model.like = YES;
    CoreData *data = [[CoreData alloc]initWithView:self.view];
    [data addToFavouritesModel:model];
    
}

-(void) removeModel: (CellViewModel *)model {
    model.like = NO;
    CoreData *data = [[CoreData alloc]initWithView:self.view];
    [data removeFromFavouritiesForIndex:model.index];
   
    }
    
@end
