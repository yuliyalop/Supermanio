//
//  FirstScreenViewController.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/21/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "FirstScreenViewController.h"
#import "ListViewController.h"
#import "ControllerFactory.h"
#import "GradientLayer.h"
#import "SceneDelegate.h"

@interface FirstScreenViewController ()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (strong, nonatomic) CAGradientLayer *gradient;
@property (strong, nonatomic) IBOutlet UIImageView *supermanio;
@end

@implementation FirstScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self gradientLayer];
    [self.view addSubview:self.contentView];
    [self.view addSubview:self.startButton];
    [self.view addSubview:self.welcomeLabel];
    [self.view addSubview:self.supermanio];
    [self.navigationController setNavigationBarHidden:YES];
}



-(void)gradientLayer {
    self.gradient = [GradientLayer gradient];
    CGRect bounds= self.view.layer.bounds;
    self.gradient.bounds = bounds;
    self.gradient.position = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds));
    [self.view.layer addSublayer:self.gradient];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    self.supermanio.layer.cornerRadius = 10.0;
    self.supermanio.clipsToBounds = YES;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.gradient.frame = self.view.bounds;
}

- (IBAction)startTapped:(id)sender {
    self.tabBarController = [UITabBarController new];
    UINavigationController *homeVC = [UINavigationController new];
       homeVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"superman"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal]tag:0];
    UINavigationController *starVC = [UINavigationController new];
       starVC.tabBarItem=[[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"heart"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal]selectedImage:[[UIImage imageNamed:@"heart-selected"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal]];

    self.tabBarController.viewControllers=@[homeVC,starVC];
    [self.navigationController setViewControllers:@[self.tabBarController] animated:NO];

    
    if (homeVC) {
        homeVC.viewControllers = @[[ControllerFactory createViewControllerWithType:home]];
    }
    if (starVC) {
     starVC.viewControllers = @[[ControllerFactory createViewControllerWithType:star]];
    }
    
}
@end
