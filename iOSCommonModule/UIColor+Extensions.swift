//
//  UIColor+Extensions.swift
//  DigitalIdentity
//
//  Created by Adriana Pineda on 7/13/21.
//

import Foundation
import UIKit

private let mask = 0x0000_00FF
extension UIColor {
    convenience init?(hex: String, alpha: CGFloat = 1) {
        guard hex.isHexString() else {
            return nil
        }

        let scanner = Scanner(string: hex)
        if hex.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let rValue = Int(color >> 16) & mask
        let gValue = Int(color >> 8) & mask
        let bValue = Int(color) & mask
        let red = CGFloat(rValue) / 255.0
        let green = CGFloat(gValue) / 255.0
        let blue = CGFloat(bValue) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    convenience init?(named name: String) {
        self.init(
            named: name,
            in: Bundle(for: CustomTheme.self),
            compatibleWith: nil
        )
    }
}

private let hexRegexPattern = "^#[a-fA-F0-9]{6,8}$"

extension String {
    func isHexString() -> Bool {
        let hexPredicate = NSPredicate(format: "self MATCHES [c] %@", hexRegexPattern)
        return hexPredicate.evaluate(with: self)
    }
}
