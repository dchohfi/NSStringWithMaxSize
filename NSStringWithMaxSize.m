//
//  NSStringWithMaxSize.m
//  Busao
//
//  Created by Diego Chohfi on 4/9/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "NSStringWithMaxSize.h"

@implementation NSStringWithMaxSize

+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth{
    return [self removeExtraFromString:string withMaxWidth:maxWidth andFont: [UIFont boldSystemFontOfSize:18]];
}

+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth andFont: (UIFont *) font{
    return [self removeExtraFromString:string withMaxWidth:maxWidth andFont:font sufixIfNeeded:@"..."];
}

+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth andFont: (UIFont *) font sufixIfNeeded: (NSString *) sufix{
    float maxWidthMinusDots = maxWidth - [sufix sizeWithFont:font].width;
    
    if([string sizeWithFont:font].width < maxWidthMinusDots)
        return string;
    
    NSMutableString *newString = [[NSMutableString alloc] init];
    int currentLetter = 0;
    while([newString sizeWithFont:font].width < maxWidthMinusDots){
        [newString appendString:[string substringWithRange:NSMakeRange(currentLetter, 1)]];
        currentLetter++;
    }
    return [NSString stringWithFormat:@"%@%@", newString, sufix];
}

@end
