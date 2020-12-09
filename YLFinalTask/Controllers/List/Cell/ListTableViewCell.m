//
//  ListTableViewCell.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/22/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "ListTableViewCell.h"


@implementation ListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.textLabel.font = [UIFont fontWithName:@"Chalkduster" size:15];
    return self;
}


-(void)configureCellWithModel: (CellViewModel *)model {
    self.textLabel.text = model.name;
}

@end
