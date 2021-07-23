//
//  OptionalDepBridge.h
//  DummyCore
//
//  Created by Adriana Pineda on 7/22/21.
//

#import <Foundation/Foundation.h>
//#import <iOSCoreModule/iOSCoreModule-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptionalDepBridge : NSObject

+ (BOOL)additionalModuleAvailable;
- (NSString *)startDummyDoc;

@end

NS_ASSUME_NONNULL_END
