//
//  Cell.m
//  SlideToDelete
//
//  Created by 王 长福 on 13-10-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(deleteMe:)];
        [recognizer setNumberOfTouchesRequired:1];
        [recognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
        [self addGestureRecognizer:recognizer];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)deleteMe:(UISwipeGestureRecognizer *)recognizer{
    UITableViewCell *cell = (UITableViewCell *)recognizer.view;
    NSIndexPath *indexPath =  [self.tableview indexPathForCell:cell];
    self.controller.numberOfRows--;
    [self.tableview deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    
}

@end
