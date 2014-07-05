//
//  NSAttributedString+Convenience.m
//  CalAdd
//
//  Created by Keith Kennedy on 18/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import "NSAttributedString+Convenience.h"

@implementation NSAttributedString (Convenience)

#pragma mark - General
+ (NSAttributedString *)attributedStringForString:(NSString *)string {
    return [NSAttributedString attributedStringForString:string usingFont:[UIFont systemFontOfSize:[UIFont systemFontSize]]];
}

+ (NSAttributedString *)attributedStringForString:(NSString *)string usingFont:(UIFont *)font {
    
    return [NSAttributedString attributedStringForString:string usingFont:font textColor:[UIColor darkTextColor]];
}

+ (NSAttributedString *)attributedStringForString:(NSString *)string textColor:(UIColor *)textColor
{
    return [NSAttributedString attributedStringForString:string usingFont:[UIFont systemFontOfSize:[UIFont systemFontSize]] textColor:textColor];
}

+ (NSAttributedString *)attributedStringForString:(NSString *)string usingFont:(UIFont *)font textColor:(UIColor *)textColor
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    
    NSMutableParagraphStyle *attributedStringParaStyle1 = [[NSMutableParagraphStyle alloc]init];
    [attributedString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithRed:0.000000 green:0.000000 blue:0.000000 alpha:0.360784] range:NSMakeRange(0,string.length)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:textColor range:NSMakeRange(0,string.length)];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:attributedStringParaStyle1 range:NSMakeRange(0,string.length)];
    [attributedString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0,string.length)];
    
    return attributedString;
}

+ (NSAttributedString *)boldAttributedStringForString:(NSString *)string {
    return [NSAttributedString attributedStringForString:string usingFont:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]]];
}

#pragma mark - Helpers
+ (NSAttributedString *)boldFirstLinePlainTextAttributedStringForBoldString:(NSString *)boldString
                                                                plainString:(NSString *)plainString
{
    return [NSAttributedString boldFirstLinePlainTextAttributedStringForBoldString:boldString
                                                                       plainString:plainString
                                                                          boldFont:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]]
                                                                         plainFont:[UIFont systemFontOfSize:[UIFont systemFontSize]]];
}

+ (NSAttributedString *)boldFirstLinePlainTextAttributedStringForBoldString:(NSString *)boldString
                                                                plainString:(NSString *)plainString
                                                                   boldFont:(UIFont *)boldFont
                                                                  plainFont:(UIFont *)plainFont
{
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]initWithString:
            [NSString stringWithFormat:@"%@\n%@", boldString, plainString]];

    UIFont *textFont1 = boldFont;
    UIFont *textFont2 = plainFont;

    UIColor *textColor1 = [UIColor colorWithRed:0.000000 green:0.000000 blue:0.000000 alpha:0.360784];
    NSMutableParagraphStyle *textParaStyle1 = [[NSMutableParagraphStyle alloc] init];

    [text addAttribute:NSUnderlineColorAttributeName value:textColor1 range:NSMakeRange(0,boldString.length)];
    [text addAttribute:NSParagraphStyleAttributeName value:textParaStyle1 range:NSMakeRange(0,boldString.length)];
    [text addAttribute:NSFontAttributeName value:textFont1 range:NSMakeRange(0,boldString.length)];
    [text addAttribute:NSUnderlineColorAttributeName value:textColor1 range:NSMakeRange(boldString.length,plainString.length + 1)];
    [text addAttribute:NSParagraphStyleAttributeName value:textParaStyle1 range:NSMakeRange(boldString.length,plainString.length + 1)];
    [text addAttribute:NSFontAttributeName value:textFont2 range:NSMakeRange(boldString.length,plainString.length + 1)];
    return text;
}

@end
