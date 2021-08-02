//
//  Doc.swift
//  iOSDocModule
//
//  Created by Adriana Pineda on 7/22/21.
//

import Foundation
import iOSCommonModule

@objc public class Doc: NSObject {
    @objc public func test() -> String {
        return "DOC"
    }

    @objc public func testCommon(theme: BrandTheme) -> CustomTheme {
        return CustomTheme(brandTheme: theme)
    }
}
