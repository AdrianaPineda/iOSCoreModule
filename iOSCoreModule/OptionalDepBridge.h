//
//  OptionalDepBridge.h
//  DummyCore
//
//  Created by Adriana Pineda on 7/22/21.
//

#import <Foundation/Foundation.h>
//#import <DummyCore/DummyCore-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptionalDepBridge : NSObject

+ (BOOL)additionalModuleAvailable;
- (void)startDummyDoc;

@end

NS_ASSUME_NONNULL_END
