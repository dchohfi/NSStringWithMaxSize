//
//  NSStringWithMaxSize.h
//
//  Created by Diego Chohfi on 4/9/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSStringWithMaxSize : NSObject

+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth;

+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth andFont: (UIFont *) font;
+ (NSString *) removeExtraFromString: (NSString *) string withMaxWidth: (float) maxWidth andFont: (UIFont *) font sufixIfNeeded: (NSString *) sufix;

@end
