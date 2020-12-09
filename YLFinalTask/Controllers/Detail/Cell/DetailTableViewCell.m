//
//  DetailTableViewCell.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 9/3/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "DetailTableViewCell.h"

@implementation DetailTableViewCell

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

- (void)configureForIndexPath: (NSIndexPath *)indexPath withModel: (CellViewModel *)model {
    
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    switch (section) {
        case 0:
            switch (row) {
                case 0:
                    self.textLabel.text = [@"Gender: " stringByAppendingFormat: @"%@", model.gender];
                    break;
                case 1:
                    self.textLabel.text = [@"Haircolor: " stringByAppendingFormat: @"%@", model.hairColor];
                    break;
                case 2:
                    self.textLabel.text = [@"Height: " stringByAppendingFormat: @"%@", model.height];
                    break;
                case 3:
                    self.textLabel.text = [@"EyeColor: " stringByAppendingFormat: @"%@", model.eyeColor];
                    break;
                case 4:
                self.textLabel.text = [@"Race: " stringByAppendingFormat: @"%@", model.race];
                    break;
                case 5:
                self.textLabel.text = [@"Weight: " stringByAppendingFormat: @"%@", model.weight];
                    break;
                default:
                    break;
            } break;
        case 1:
            switch (row) {
                case 0:
                  self.textLabel.text = [@"Aliases: " stringByAppendingFormat: @"%@", model.aliases];
                    break;
                case 1:
                    self.textLabel.text = [@"Aligment: " stringByAppendingFormat: @"%@", model.alignment];
                    break;
                case 2:
                    self.textLabel.text = [@"Alterego: " stringByAppendingFormat: @"%@", model.alterEgos];
                    break;
                case 3:
                    self.textLabel.text = [@"First appearance: " stringByAppendingFormat: @"%@", model.firstAppearance];
                    break;
                case 4:
                    self.textLabel.text = [@"Place of birth: " stringByAppendingFormat: @"%@", model.placeOfBirth];
                    break;
                case 5:
                    self.textLabel.text = [@"Publisher: " stringByAppendingFormat: @"%@", model.publisher];
                    break;
                default:
                    break;
            } break;
        case 2:
            switch (row) {
                case 0:
                    self.textLabel.text = [@"Combat: " stringByAppendingFormat: @"%@", model.combat];
                    break;
                case 1:
                    self.textLabel.text = [@"Intelligence: " stringByAppendingFormat: @"%@", model.intelligence];
                    break;
                case 2:
                    self.textLabel.text = [@"Power: " stringByAppendingFormat: @"%@", model.power];
                    break;
                case 3:
                    self.textLabel.text = [@"Strength: " stringByAppendingFormat: @"%@", model.strength];
                    break;
                default:
                    break;
            } break;
        case 3:
            switch (row) {
                case 0:
                 self.textLabel.text = [@"Base: " stringByAppendingFormat: @"%@", model.base];
                    break;
                case 1:
                 self.textLabel.text = [@"Occupation: " stringByAppendingFormat: @"%@", model.occupation];
                    break;
                default:
                    break;
            } break;
}
}
@end
