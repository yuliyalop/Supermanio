//
//  AnotherHeaderView.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "AnotherHeaderView.h"
#import "GradientLayer.h"

@implementation AnotherHeaderView

-(void)awakeFromNib {
    [super awakeFromNib];
    //[self gradientLayer];
    [self addSubview:self.openClose];
    [self addSubview:self.title];
    self.title.textColor = [UIColor lightGrayColor];
    self.title.font = [UIFont fontWithName:@"Chalkduster" size:18];
    [self buttonSettings];
}

-(NSString *) fillNameOfSection: (NSInteger )section {
    NSString *title;
    switch (section) {

        case 0:
           title = @"Appearance";
            break;
        case 1:
            title = @"Biography";
            break;
        case 2:
            title = @"Powerstatus";
            break;
        case 3:
            title = @"Work";
            break;
    }
    return title;
}


-(void) buttonSettings {
    [self.openClose setTitle:@"Close" forState:UIControlStateNormal];
    self.openClose.titleLabel.font = [UIFont fontWithName:@"Chalkduster" size:18];
}

- (IBAction)openCloseTap:(id)sender {

}

- (void) handleExpandClose {
    
}
@end
