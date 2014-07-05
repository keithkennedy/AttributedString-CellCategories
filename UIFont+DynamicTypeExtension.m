//
//  UIFont+DynamicTypeExtension.m
//  CalAdd
//
//  Created by Keith Kennedy on 21/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import "UIFont+DynamicTypeExtension.h"

@implementation UIFont (DynamicTypeExtension)

+ (UIFont *)preferredFontForTextStyle:(NSString *)fontTextStyle
                   withSymbolicTraits:(UIFontDescriptorSymbolicTraits)symbolicTraits
{
    UIFontDescriptor *fontDesciptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:fontTextStyle];
    UIFontDescriptor *styleFontDescriptor = [fontDesciptor fontDescriptorWithSymbolicTraits:symbolicTraits];
    return [UIFont fontWithDescriptor:styleFontDescriptor size:0.0];
}

@end
