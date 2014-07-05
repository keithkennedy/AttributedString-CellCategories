//
//  UITableView+DynamicCellHeight.m
//  CalAdd
//
//  Created by Keith Kennedy on 25/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import "UITableView+DynamicCellHeight.h"

@implementation UITableView (DynamicCellHeight)

- (CGFloat)heightForAllAttributedText:(NSArray *)allAttributedText
                        minimumHeight:(CGFloat)minimumHeight
{
    for (id obj in allAttributedText) {
        if (![obj isKindOfClass:[NSAttributedString class]]) {
            NSAssert(false, @"Object not of class: %@", [NSAttributedString class]);
        }
    }
    
    CGFloat padding = (self.isEditing) ? 90.0f : 70.0f;
    CGFloat height = 15.0f;
    
    for (NSAttributedString *attributedString in allAttributedText) {
        height += ceilf([attributedString boundingRectWithSize:CGSizeMake(self.frame.size.width - padding, CGFLOAT_MAX)
                                                       options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
                                                       context:nil].size.height);
    }
    
    return (height > minimumHeight) ? height : minimumHeight;
}

- (CGFloat)heightForAttributedText:(NSAttributedString *)attributedText
              detailAttributedText:(NSAttributedString *)detailAttributedText
                     minimumHeight:(CGFloat)minimumHeight
{
    return [self heightForAllAttributedText:@[attributedText, detailAttributedText] minimumHeight:minimumHeight];
}

@end
