//
//  OptionalDepBridge.m
//  DummyCore
//
//  Created by Adriana Pineda on 7/22/21.
//

#import "OptionalDepBridge.h"
@import iOSDocModule;

@implementation OptionalDepBridge

+ (BOOL)additionalModuleAvailable {
    if ([Doc class]) {
        return YES;
    } else {
        return NO;
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
