//
//  UIFont+DynamicTypeExtension.h
//  CalAdd
//
//  Created by Keith Kennedy on 21/05/2014.
//  Copyright (c) 2014 Keith Kennedy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (DynamicTypeExtension)

+ (UIFont *)preferredFontForTextStyle:(NSString *)fontTextStyle
                   withSymbolicTraits:(UIFontDescriptorSymbolicTraits)symbolicTraits;

@end
