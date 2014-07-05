//
//  UITableView+Cells.m
//  KReddit
//
//  Created by Keith Kennedy on 07/10/2013.
//  Copyright (c) 2013 Keith Kennedy. All rights reserved.
//

#import "UITableView+Cells.h"

@implementation UITableView (Cells)

- (UITableViewCell *)standardDefaultCell {
    static NSString *CellIdentifier = @"StandardCell";
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    return cell;
}

- (UITableViewCell *)standardSubtitleCell {
    static NSString *CellIdentifier = @"SubtitleCell";
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    return cell;
}

- (UITableViewCell *)standardValue1Cell {
    static NSString *Cell1Identifier = @"Value1Cell";
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:Cell1Identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:Cell1Identifier];
    }
    return cell;
}

- (UITableViewCell *)standardValue2Cell {
    static NSString *Cell2Identifier = @"Value2Cell";
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:Cell2Identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:Cell2Identifier];
    }
    return cell;
}

@end
