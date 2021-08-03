//
//  Core.swift
//  iOSCoreModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation
import iOSCommonModule

public class Core {
    public init() {

    }

    public func testDoc() -> String {
        let bridge = OptionalDepBridge()
        return bridge.startDummyDoc()
    }

    public func testDocFromCore() -> Bool {
        let brandTheme = BrandTheme(primaryColor: nil, secondaryColor: nil, fontColor: nil)
        return OptionalDepBridge().startDocCommon(brandTheme) != nil
    }

    public func testCommonFromCore() -> Bool {
        return BrandTheme(primaryColor: nil, secondaryColor: nil, fontColor: nil) != nil
    }
}
