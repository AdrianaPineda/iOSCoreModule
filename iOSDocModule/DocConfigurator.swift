//
//  DocumentModuleConfigurator.swift
//  DigitalIdentity
//
//  Created by Adriana Pineda on 7/9/21.
//

import Foundation
import UIKit
import CommonMOdule

@objc
class DocumentModuleConfigurator: NSObject {
    func buildDocumentModule(
        identityProcess: String,
        theme: CustomTheme
    ) throws -> UIViewController {
        DocumentModuleConfig.setup(
            appTheme: theme
        )

        let documentTypeConfigurator = DocumentTypeConfigurator()
        return try documentTypeConfigurator.buildModule(identityProcess: "")
    }
}

class DocumentTypeConfigurator {
    func buildModule(identityProcess: String) throws -> UIViewController {
        return UIViewController()
    }
}
