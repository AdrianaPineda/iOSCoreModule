//
//  OptionalDepBridge.m
//  DummyCore
//
//  Created by Adriana Pineda on 7/22/21.
//

#import "OptionalDepBridge.h"
@import iOSDocModule;
@import iOSCommonModule;

@implementation OptionalDepBridge

+ (BOOL)additionalModuleAvailable {
    if ([Doc class]) {
        return YES;
    } else {
        return NO;
    }
}
- (CustomTheme *)startDocCommon: (BrandTheme *)theme {
    if ([OptionalDepBridge additionalModuleAvailable]) {
        Doc *docFile = [[Doc alloc] init];
        return [docFile testCommonWithTheme:theme];
    } else {
        return NULL;
    }
}

- (NSString *)startDummyDoc {
    if ([OptionalDepBridge additionalModuleAvailable]) {
        return @"YES";
    } else {
        return @"NO";
    }
}

@end
