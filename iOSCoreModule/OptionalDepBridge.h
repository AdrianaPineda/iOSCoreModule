//
//  OptionalDepBridge.h
//  DummyCore
//
//  Created by Adriana Pineda on 7/22/21.
//

#import <Foundation/Foundation.h>
//#import <iOSCoreModule/iOSCoreModule-Swift.h>
#import <iOSCommonModule/iOSCommonModule-Swift.h>
#import <iOSDocModule/iOSDocModule-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptionalDepBridge : NSObject

+ (BOOL)additionalModuleAvailable;
- (NSString *)startDummyDoc;
- (CustomTheme *)startDocCommon: (BrandTheme *)theme;

@end

NS_ASSUME_NONNULL_END
