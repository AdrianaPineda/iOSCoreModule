//
//  DocumentModuleConfig.swift
//  DigitalIdentity
//
//  Created by Adriana Pineda on 7/9/21.
//

import Foundation
import CommonMOdule

class DocumentModuleConfig {
    static let shared = DocumentModuleConfig()

    private(set) weak var appTheme: CustomTheme?

    static func setup(
        appTheme: CustomTheme
    ) {
        shared.appTheme = appTheme
    }
}
