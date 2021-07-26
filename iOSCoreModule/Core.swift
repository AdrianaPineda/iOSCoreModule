//
//  Core.swift
//  iOSCoreModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation
@_implementationOnly import iOSCommonModule

public class Core {
    public init() {

    }

    public func testDoc() -> String {
        let bridge = OptionalDepBridge()
        return bridge.startDummyDoc()
    }

    public func testCommonFromCore() -> Bool {
        return BrandTheme(primaryColor: nil, secondaryColor: nil, fontColor: nil) != nil
    }
}
