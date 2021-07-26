//
//  Doc.swift
//  iOSDocModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation
import iOSCommonModule

@objc public class Doc: NSObject {
    public func test() -> String {
        return "DOC"
    }

    public func testCommon() -> Bool {
        return BrandTheme(primaryColor: nil, secondaryColor: nil, fontColor: nil) != nil
    }
}
