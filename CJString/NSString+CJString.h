//
//  NSString+CJString.h
//
//  Created by Jeremy chaufourier on 15/01/13.
//  Copyright (c) 2013 Jeremy Chaufourier.
//

#import <Foundation/Foundation.h>

@interface NSString (CJString)

- (NSInteger)countOccurencesOfString:(NSString*)searchString;
- (NSString *)toSlug;

@end
