//
//  Cell.h
//  SlideToDelete
//
//  Created by 王 长福 on 13-10-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface Cell : UITableViewCell

@property (nonatomic, weak) UITableView *tableview;
@property (nonatomic, weak) ViewController *controller;

@end
