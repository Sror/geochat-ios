//
//  GCPlaceCell.m
//  geochat
//
//  Created by Adrian Gzz on 12/02/13.
//  Copyright (c) 2013 Adrian Gzz. All rights reserved.
//

#import "GCPlaceCell.h"
#import "NSString+FontAwesome.h"

@interface GCPlaceCell()
@property (weak, nonatomic) IBOutlet UILabel *accessory;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *usersLabel;

@end

@implementation GCPlaceCell

@synthesize name = _name;
@synthesize distance = _distance;
@synthesize users = _users;
@synthesize image = _image;
@synthesize accessory = _accessory;
@synthesize usersLabel = _usersLabel;
@synthesize distanceLabel = _distanceLabel;

-(void) awakeFromNib{
    // right arrow
    self.accessory.font = [UIFont fontWithName:kFontAwesomeFamilyName size:20];
    self.accessory.textColor = [UIColor grayColor];
    self.accessory.text = [NSString stringWithFormat:@"%@", [NSString fontAwesomeIconStringForEnum:FAIconChevronRight]];
}

-(void) layoutSubviews {
    [super layoutSubviews];
}

-(void) setUsers:(NSNumber *)users{
    _users = users;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:[self fontawesomeAttibutedStringWithIcon:@"icon-group" string:[NSString stringWithFormat:@"%@", _users]]];
    
    if ([_users compare:@0] == NSOrderedDescending) {
        [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0 green:0 blue:255 alpha:1] range:NSMakeRange(0, [attributedString.string length])];
        [attributedString addAttribute:NSStrokeColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, [attributedString.string length])];
    }
    
    self.usersLabel.attributedText = attributedString;
}

-(void) setDistance:(NSString *)distance{
    _distance = distance;
    self.distanceLabel.text = [NSString stringWithFormat:@"%@m", _distance];
}

-(NSAttributedString *) fontawesomeAttibutedStringWithIcon:(NSString *)icon string:(NSString *)string{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@ %@", [NSString fontAwesomeIconStringForIconIdentifier:icon], string]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(1, [attributedString.string length] - 1)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFamilyName size:14] range:NSMakeRange(0, 1)];
    return attributedString;
}

@end