//
//  Core.swift
//  iOSCoreModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation

public class Core {
    public init() {

    }

    public func testDoc() -> String {
        let bridge = OptionalDepBridge()
        return bridge.startDummyDoc()
    }
}
