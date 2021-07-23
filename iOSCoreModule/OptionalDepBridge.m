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
- (void)startDummyDoc {
    if ([OptionalDepBridge additionalModuleAvailable]) {
        NSLog(@"****** YES");
    } else {
        NSLog(@"****** NO");
    }
}

@end
