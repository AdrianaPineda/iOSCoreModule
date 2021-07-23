//
//  Core.swift
//  iOSCoreModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation
import CommonMOdule

public class Core {
    public init() {

    }

    public func testDoc() -> String {
        let bridge = OptionalDepBridge()
        return bridge.startDummyDoc()
    }

    public func testCommon() {
        let customTheme = CustomTheme()
        print("*** \(customTheme != nil)")
    }
}
