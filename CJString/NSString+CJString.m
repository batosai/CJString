//
//  NSString+CJString.m
//
//  Created by Jeremy chaufourier on 15/01/13.
//  Copyright (c) 2013 Jeremy Chaufourier.
//

#import "NSString+CJString.h"

@implementation NSString (CJString)

- (NSInteger)countOccurencesOfString:(NSString*)searchString {
    int strCount = [self length] - [[self stringByReplacingOccurrencesOfString:searchString withString:@""] length];
    return strCount / [searchString length];
}

- (NSString *)toSlug {
    NSString *value = [self  lowercaseString];
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"/:=.;,!?\\$#@&§%£¥€*^¨°'\"{}()[]<>+"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @""];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@" "];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"-"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"àáâãäå"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"a"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"èéêë"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"e"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"òóôõöø"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"o"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"ìíîï"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"i"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"ùúûü"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"u"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"ÿ"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"y"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"ñ"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"n"];

    doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"ç"];
    value = [[value componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @"c"];

    return value;
}

@end
