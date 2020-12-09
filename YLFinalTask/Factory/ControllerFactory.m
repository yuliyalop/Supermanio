//
//  ControllerFactory.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/24/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "ControllerFactory.h"
#import "HomeViewController.h"
#import "StarViewController.h"
#import "HomePresentrt.h"
#import "StarPresenter.h"
@implementation ControllerFactory
+(ListViewController *)createViewControllerWithType:(Type )type {
    switch (type) {
        case home:{
            HomeViewController *home = [[HomeViewController alloc]initWithNibName:@"ListViewController" bundle:nil];
            home.presenter = [[HomePresentrt alloc]initWithView:home];
            
            return home ;}
          
        case star: {
              StarViewController *star = [[StarViewController alloc]initWithNibName:@"ListViewController" bundle:nil];
            star.presenter = [[StarPresenter alloc]initWithView:star];
            return star; }
        default:
            break;
    }
}
@end
