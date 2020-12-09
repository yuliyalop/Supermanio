//
//  ListViewController.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "ListViewController.h"
#import "ListTableViewCell.h"
#import "DetailViewController.h"
#import "HomePresentrt.h"
#import "UIImageView+LoadWithURL.h"
#import "GradientLayer.h"

@interface ListViewController () < UITableViewDelegate, UITableViewDataSource >

@property (strong, nonatomic)  UISearchBar *search;
@property (strong, nonatomic) CAGradientLayer *gradient;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"All superheroes";
    self.navigationItem.leftBarButtonItem.title = @"Exit";
    [self.listTable registerClass:ListTableViewCell.class forCellReuseIdentifier:@"CellId"];
    [self.listTable setDelegate:self];
    [self.listTable setDataSource:self];
    [self gradientLayer];
    [self.view addSubview:self.listTable];
    [self.listTable setSeparatorColor: [UIColor blueColor]];

}
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.gradient.frame = self.view.bounds;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.presenter startLoading];

}

-(void)gradientLayer {
    self.gradient = [GradientLayer gradient];
    CGRect bounds= self.view.layer.bounds;
    self.gradient.bounds = bounds;
    self.gradient.position = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds));
    [self.view.layer addSublayer:self.gradient];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.presenter.dataSourse.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath:indexPath];
    CellViewModel *model = [self.presenter configureViewModelAtIndexPath:indexPath];
    [cell configureCellWithModel:model];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    DetailViewController *detail = [[DetailViewController alloc]initWithModel:self.presenter.models[indexPath.item]];
    [self.navigationController pushViewController:detail animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


@end
 
