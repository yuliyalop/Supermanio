//
//  DetailViewController.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/31/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "DetailViewController.h"
#import "CellViewModel.h"
#import "DetailPresenter.h"
#import "UIImageView+LoadWithURL.h"
#import "CoreData.h"
#import "ImageViewController.h"
#import "DetailTableViewCell.h"
#import "AnotherHeaderView.h"
#import "FirstHeaderView.h"

@interface DetailViewController () <UIGestureRecognizerDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) DetailPresenter *presenter;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) AnotherHeaderView *anotherView;

@end

@implementation DetailViewController


- (instancetype) initWithModel: (CellViewModel *)model {
    self = [super init];
    if (self) {
        _model = model;
        _presenter = [[DetailPresenter alloc]initWithView:self];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:DetailTableViewCell.class forCellReuseIdentifier:@"CellId"];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    UINib *nib = [UINib nibWithNibName:@"AnotherHeaderView" bundle:nil];
    [self.tableView registerNib:nib forHeaderFooterViewReuseIdentifier:@"AnotherHeaderView"];
    
    FirstHeaderView *header = [[[NSBundle mainBundle] loadNibNamed:@"FirstHeaderView" owner:self options:nil] objectAtIndex:0];
    
    self.tableView.tableHeaderView = header;
            header.name.text = self.model.name;
            if (!self.model.supermanImage) {
    
    [self.presenter loadImageWithModel:self.model completion:^ {
           header.imageView.image = self.model.supermanImage ? self.model.supermanImage : [UIImage imageNamed:@"page-not-found"];
                 }];
            }
   header.controller = self;
    if (self.model.like) {
    [header.like setImage:[UIImage imageNamed:@"heart-selected"] forState:UIControlStateNormal];
    } else {
    [header.like setImage:[UIImage imageNamed:@"heart"]forState:UIControlStateNormal];;
    }
            }


-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self.view setNeedsDisplay];
}

-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

- (void) didTapLikeInController {
    [self.presenter saveModel: self.model];
}

- (void) didTapDislike {
    [self.presenter removeModel: self.model];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:( NSIndexPath *)indexPath {
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath:indexPath];
    
    [cell configureForIndexPath:indexPath withModel:self.model];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {

        case 0:
            return 6;
            break;
        case 1:
            return 6;
            break;
        case 2:
            return 4;
            break;
        case 3:
            return 2;
            break;
            
        default:
            break;
    }
    return section;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    AnotherHeaderView *headerView;

    headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"AnotherHeaderView"];
    headerView.title.text = [headerView fillNameOfSection:section];
    
return headerView ;
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}


@end
