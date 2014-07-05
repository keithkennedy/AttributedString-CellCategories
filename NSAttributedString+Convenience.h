//
//  NSAttributedString+Convenience.h
//  CalAdd
//
//  Created by Keith Kennedy on 18/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Convenience)

#pragma mark - General
+ (NSAttributedString *)attributedStringForString:(NSString *)string;
+ (NSAttributedString *)attributedStringForString:(NSString *)string usingFont:(UIFont *)font;
+ (NSAttributedString *)attributedStringForString:(NSString *)string textColor:(UIColor *)textColor;
+ (NSAttributedString *)attributedStringForString:(NSString *)string usingFont:(UIFont *)font textColor:(UIColor *)textColor;
+ (NSAttributedString *)boldAttributedStringForString:(NSString *)string;

#pragma mark - Helpers
+ (NSAttributedString *)boldFirstLinePlainTextAttributedStringForBoldString:(NSString *)boldString
                                                                plainString:(NSString *)plainString;

+ (NSAttributedString *)boldFirstLinePlainTextAttributedStringForBoldString:(NSString *)boldString
                                                                plainString:(NSString *)plainString
                                                                   boldFont:(UIFont *)boldFont
                                                                  plainFont:(UIFont *)plainFont;

@end
