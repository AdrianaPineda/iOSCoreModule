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

    public func test2() -> String {
        let brandTheme = BrandTheme(primaryColor: nil, secondaryColor: nil, fontColor: "abc")
        return "DOC + COMMON \(brandTheme.fontColor)"
    }
}
