//
//  UITableView+DynamicCellHeight.h
//  CalAdd
//
//  Created by Keith Kennedy on 25/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (DynamicCellHeight)

- (CGFloat)heightForAllAttributedText:(NSArray *)allAttributedText
                        minimumHeight:(CGFloat)minimumHeight;

- (CGFloat)heightForAttributedText:(NSAttributedString *)attributedText
              detailAttributedText:(NSAttributedString *)detailAttributedText
                     minimumHeight:(CGFloat)minimumHeight;

@end
